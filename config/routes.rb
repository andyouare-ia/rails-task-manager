Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/:id', to: 'tasks#show', as: :task
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'

#   Prefix Verb   URI Pattern               Controller#Action
#   tasks GET    /tasks(.:format)          tasks#index
#         POST   /tasks(.:format)          tasks#create
# new_task GET    /tasks/new(.:format)      tasks#new
# edit_task GET    /tasks/:id/edit(.:format) tasks#edit
#    task GET    /tasks/:id(.:format)      tasks#show
#         PATCH  /tasks/:id(.:format)      tasks#update
#         PUT    /tasks/:id(.:format)      tasks#update
#         DELETE /tasks/:id(.:format)      tasks#destroy

  # resources :tasks

end
