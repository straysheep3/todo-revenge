Rails.application.routes.draw do
  root "todo_lists#index"
  resources :todo_lists do
    resources :todo_tasks do
      member do
        patch :complete
      end
    end
  end
end
