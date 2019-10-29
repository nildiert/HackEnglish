Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/health', to: 'health#health'
  get '/user_info/:id', to: 'user_info#show'
  get '/user_info_levels/:id', to: 'user_info_levels#index'
  get '/user_info_level_concepts/:id', to: 'user_info_level_concepts#index'
  match 'signin', to: 'signin#signin', via: [:post]
  match 'signup', to: 'signup#create', via: [:post]
  

  resources :roles, only: [:index, :show, :create, :update, :destroy]
  resources :achievements, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :update, :destroy] do
    resources :user_projects, only: [:index, :show, :create, :update, :destroy]
    resources :user_achievements, only: [:index, :show, :create, :update, :destroy]
  end

  resources :user_projects, only: [] do
    resources :task_assignments, only: [:index, :show, :create, :update, :destroy]
  end
  resources :levels, only: [:index, :show, :create, :update, :destroy]
  resources :concepts, only: [:index, :show, :create, :update]
  resources :projects, only: [:index, :show, :create, :update, :destroy]
  resources :task_assignments, only: [] do
    resources :check_task_assignments, only: [:index, :show, :create, :update, :destroy]
  end
  resources :tasks, only: [:index, :show, :create, :update]
  resources :checks, only: [:index, :show, :create, :update]
  # user_achievement
  # user_project
  # task_assignment
  # check_task_assignment
end
