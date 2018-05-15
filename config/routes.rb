Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Read all tasks
  get "/tasks", to: "tasks#index"
  # Display one task
  get "/tasks/:id", to: "tasks#show", as: "task"

end
