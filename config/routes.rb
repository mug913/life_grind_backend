Rails.application.routes.draw do
 

namespace :api do
  namespace :v1 do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :users, only: [:index, :show, :create, :login] do
      resources :goals, only: [:index, :show, :create, :update] do 
        resources :goal_records, only: [:index, :show, :create, :update]
        end
      end
      resource :login, only: [:create] 
    resources :goals, only: [:show, :destroy] 
    resources :goal_records, only: [:destroy, :show]
    end 
    
  end
end
