Rails.application.routes.draw do

  resources :lawyer_profiles
  devise_for :users

  resources :discussions do
    resources :replies
  end

  resources :users do
    resources :lawyers
  end


  root 'home#index'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
