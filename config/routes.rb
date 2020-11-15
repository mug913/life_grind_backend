Rails.application.routes.draw do

namespace :api do
  namespace :v1 do
     resources :users, only: [:index, :show, :create, :login] do
     resources :goals, only: [:index, :show, :create, :update] do 
      resources :goal_records, only: [:index, :show, :create, :update]
     end
    end
    resources :login, only: [:create]
  end
end
end
