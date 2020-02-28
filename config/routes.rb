Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects do
    resources :tasks, only: [:create, :destroy]
  end

  post '/project/:project_id/tasks/:id/toggle' => 'tasks#toggle'

  root 'projects#index'

  resources :todos
  get 'hellos/index' => 'hellos#index'

  root 'hello#index'


end
