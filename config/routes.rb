Rails.application.routes.draw do
  resources :books
  resources :librarians
  resources :students
  resources :admins
  resources :libraries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
