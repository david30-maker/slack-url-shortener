require 'rails_helper'

RSpec.describe ShortenedUrlsController, type: :controller do
  describe 'GET #show' do
  it 'redirects to the sanitized URL' do
    shortened_url = ShortenedUrl.create!(original_url: 'http://example.com', sanitize_url: 'example.com', short_url: 'http://localhost:3000/abc123')
    get :show, params: { short_url: shortened_url.short_url }

    expect(response).to have_http_status(302)
    expect(response).to redirect_to("http://www.example.com")
  end
end

  describe 'POST #create' do
    it 'creates a shortened URL and responds with OK' do
      allow_any_instance_of(Slack::Web::Client).to receive(:chat_postMessage).and_return(true)
      
      post :create, params: { text: 'https://example.com', channel_id: 'your_channel_id' }
      
      expect(response).to have_http_status(:ok)
    end
  end
end
