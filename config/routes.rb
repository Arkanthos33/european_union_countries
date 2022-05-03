Rails.application.routes.draw do
  resources :countryinformations
  resources :countries
  root "uecountries#home"

  get '/uecountries' => 'uecountries#index'
end
