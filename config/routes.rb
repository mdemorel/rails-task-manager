Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Read all tasks
  get "/tasks", to: "tasks#index"
  # Create one task
  get "/tasks/new", to: "tasks#new"
  post "/tasks", to: "tasks#create"
  # Display one task
  get "/tasks/:id", to: "tasks#show", as: "task"
  # Edit one task
  get "/tasks/:id/edit", to: "tasks#edit", as: "task_edit"
  patch "tasks/:id", to: "tasks#update"
  # Delete a task
  delete "/tasks/:id", to: "tasks#destroy"
end
