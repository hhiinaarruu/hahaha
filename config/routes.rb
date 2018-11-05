Rails.application.routes.draw do

  # Existing route
  get ':user_name', to: 'profiles#show', as: :profile
  # New route underneath
  get ':user_name/edit', to: 'profiles#edit', as: :edit_profile

  devise_for :users, :controllers => { registrations: 'registrations' }

  patch ':user_name/edit', to: 'profiles#update', as: :update_profile

  root 'posts#index'

  resources :posts do
    
    resources :comments

    member do
        get 'like'

    end

  end
  
end