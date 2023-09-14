class ShortenedUrlsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @url = ShortenedUrl.find_by_short_url("ENV['APP_DOMAIN']#{params[:short_url]}")
    redirect_to "http://www.#{@url.sanitize_url}", allow_other_host: true
  end

  def create
    short_url = shorten(params[:text])
    send_short_url_to_slack(params[:channel_id], short_url)
    head :ok
  end

  private

  def sanitize_url(url)
    url.strip.downcase.gsub(/(https?:\/\/)|(www\.)/, "")
  end

  def shorten(long_url)
    unique_url = sanitize_url(long_url)

    existing_url = ShortenedUrl.find_by(sanitize_url: unique_url)
    return existing_url.short_url if existing_url

    new_url = ShortenedUrl.new(original_url: long_url, sanitize_url: unique_url)
    loop do
      url = generate_short_url
      old_url = ShortenedUrl.find_by(short_url: url)
      unless old_url
        new_url.update!(short_url: url)
        break
      end
    end
    new_url.short_url
  end

  def generate_short_url
    unique_id = [*('a'..'z'), *('0'..'9')].sample(6).join
    "ENV['APP_DOMAIN']#{unique_id}"
  end

  def send_short_url_to_slack(channel_id, short_url)
    Thread.new do
      client = Slack::Web::Client.new
      client.chat_postMessage(channel: channel_id, text: short_url)
    end
  end
end
