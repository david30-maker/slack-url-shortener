require 'rails_helper' # => true

RSpec.describe ShortenedUrl, type: :model do
  context 'validations' do
    it 'is valid with a valid original_url' do
      shortened_url = ShortenedUrl.new(original_url: 'https://example.com')
      expect(shortened_url).to be_valid
    end

    it 'is invalid without an original_url' do
      shortened_url = ShortenedUrl.new(original_url: nil)
      expect(shortened_url).to_not be_valid
    end

    it 'is invalid with an invalid original_url format' do
      shortened_url = ShortenedUrl.new(original_url: 'invalid-url')
      expect(shortened_url).to_not be_valid
    end

    it 'is valid with a valid original_url format' do
      shortened_url = ShortenedUrl.new(original_url: 'http://valid-url.com')
      expect(shortened_url).to be_valid
    end
  end

  context 'find_duplicate' do
    it 'returns nil if no duplicate is found' do
      new_url = ShortenedUrl.new(original_url: 'https://example.com')
      expect(new_url.find_duplicate).to be_nil
    end

    it 'returns the duplicate if one exists' do
      existing_url = ShortenedUrl.create(original_url: 'https://example.com')
      new_url = ShortenedUrl.new(original_url: 'https://example.com')

      expect(new_url.find_duplicate).to eq(existing_url)
    end
  end
end
