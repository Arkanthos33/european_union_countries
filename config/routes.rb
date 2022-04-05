Rails.application.routes.draw do
  resources :countries
  root "home#quiz"

  get '/quiz' => 'quiz#index'
end
