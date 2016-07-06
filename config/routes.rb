Rails.application.routes.draw do
  root "todo_items#index"
  resources :item_lists
end
