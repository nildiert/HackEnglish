Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/health', to: 'health#health'
  match 'signin', to: 'signin#signin', via: [:post]

  resources :roles, only: [:index, :show, :create, :update, :destroy]
  resources :achievements, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:create]

  # level
  resources :concepts, only: [:index, :show, :create, :update]
  # project
  resources :tasks, only: [:index, :show, :create, :update]
  # check
  # user
  # user_achievement
  # user_project
  # task_assignment
  # check_task_assignment

end
