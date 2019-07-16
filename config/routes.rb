Rails.application.routes.draw do

  get '/search', to: 'clearbit#search'
  root 'clearbit#index'
end
