Rails.application.routes.draw do
  resources :countries
  root "home#uecountries"

  get '/uecountries' => 'uecountries#index'
end
