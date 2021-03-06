Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'posts#index'

  namespace :admin do
    root 'posts#index'
    resources :posts, except: [:show]
    resources :users, except: [:show]
  end

  resources :posts do
    resources :comments

    member do
      get 'like'
      get 'unlike'
    end
  end

  get ':user_name', to: 'profiles#show', as: :profile
  get ':user_name/edit', to: 'profiles#edit', as: :edit_profile
  patch ':user_name/edit', to: 'profiles#update', as: :update_profile

end
