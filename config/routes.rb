Rails.application.routes.draw do
  root to: 'shortened_urls#index'
  get '/:short_url', to: 'shortened_urls#show'
  post '/shortened_urls', to: 'shortened_urls#create'
end
