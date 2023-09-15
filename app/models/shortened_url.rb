class ShortenedUrl < ApplicationRecord
  validates :original_url, presence: true
  validates_format_of :original_url,
                      with: %r{\A(?:(?:https?|ftp)://)?([-a-zA-Z0-9.]{2,256}\.[a-z]{2,4}\b(?:[-a-zA-Z0-9@,!:%_\+.~#?&/=]*))\z}

  def find_duplicate
    ShortenedUrl.find_by_sanitize_url(sanitize_url)
  end
end
