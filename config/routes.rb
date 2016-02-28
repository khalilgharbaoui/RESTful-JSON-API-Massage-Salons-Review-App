Rails.application.routes.draw do
  root 'massagesalons#index'

  resources :massagesalons, except: [:new, :edit] do
    resource :reviews, except: [:new, :edit]
  end
end
