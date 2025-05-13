Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "posts#index"
  # READ ALL
  get '/tasks', to: 'tasks#index', as: :tasks

  # Create
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # READ ONE
  get '/tasks/:id', to: 'tasks#show', as: :task

  # edit
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # DELETE
  delete '/tasks/:id', to: 'tasks#destroy'

  # Patch checkbox
end
