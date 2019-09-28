Rails.application.routes.draw do
  devise_for :students, controllers: { sessions: 'students/sessions', registrations: 'students/registrations'}
  devise_for :admins, controllers: { sessions: 'admins/sessions', registrations: 'admins/registrations'}
  #devise_for :librarians
  devise_for :librarians, controllers: { sessions: 'librarians/sessions', registrations: 'librarians/registrations'}
  get 'welcome/index'
  resources :books
  resources :librarians
  resources :students
  resources :admins
  resources :libraries
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'getallUsers' => 'admins#getallusers', :as => :getallusers
  get 'librarianssignup' => 'librarians#signup', :as => :librarianssignup
  get 'login' => 'librarians#login', :as => :login
end
