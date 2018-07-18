Rails.application.routes.draw do

  devise_for :users
  root to: "documents#index"
  resources :documents, only: [ :show]

get  '/documents' => redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
