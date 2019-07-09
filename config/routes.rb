Rails.application.routes.draw do
  root "welcome#index"

  get '/search', to: 'giphy_search#index'
end
