Rails.application.routes.draw do
  root 'massagesalons#index'

  resources :massagesalons, except: [:new, :edit] do
    resources :reviews, except: [:new, :edit]
  end
end
