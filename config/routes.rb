Rails.application.routes.draw do
  root "search#top"
  get "/search/top"
  post '/search/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
