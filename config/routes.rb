Rails.application.routes.draw do
  resources :tasks

#resouecesを使用して７つのルーティングを自動設定
#tasks     GET    /tasks(.:format)           tasks#index
#          POST   /tasks(.:format)           tasks#create
#new_task  GET    /tasks/new(.:format)       tasks#new
#edit_task GET    /tasks/:id/edit(.:format)  tasks#edit
#task      GET    /tasks/:id(.:format)       tasks#show
#          PATCH  /tasks/:id(.:format)       tasks#update
#          PUT    /tasks/:id(.:format)       tasks#update
#          DELETE /tasks/:id(.:format)       tasks#destroy

end
