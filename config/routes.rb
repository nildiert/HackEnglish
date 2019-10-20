Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/health', to: 'health#health'
  match 'signin', to: 'signin#signin', via: [:post]
  match 'signup', to: 'signup#create', via: [:post]
  

  resources :roles, only: [:index, :show, :create, :update, :destroy]
  resources :achievements, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :update, :destroy]
  resources :levels, only: [:index, :show, :create, :update, :destroy]
  resources :concepts, only: [:index, :show, :create, :update]
  resources :projects, only: [:index, :show, :create, :update, :destroy]
  resources :tasks, only: [:index, :show, :create, :update] 
  resources :checks, only: [:index, :show, :create, :update]
  # user_achievement
  # user_project
  # task_assignment
  # check_task_assignment
end
