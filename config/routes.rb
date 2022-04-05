Rails.application.routes.draw do
  resources :countries
  root "uecountries#home"

  get '/uecountries' => 'uecountries#index'
end
