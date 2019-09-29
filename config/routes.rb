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
  resources :universities
  resources :bookmarks
  resources :book_issue_histories
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'getallUsers' => 'admins#getallusers', :as => :getallusers
  get 'checkout' => 'books#checkout', :as => :checkout
  get 'return' => 'books#return', :as => :return
  get 'getlibrarybooks' => 'books#getlibrarybooks', :as => :getlibrarybooks
  get 'getstudentlibraries' => 'students#getstudentlibraries', :as => :getstudentlibraries
  get 'getstudentbooks' => 'books#getstudentbooks', :as => :getstudentbooks
  get 'librarianssignup' => 'librarians#signup', :as => :librarianssignup
  get 'signup_approvals' => 'admins#getsignupapprovals', :as => :get_signupapprovals
  get 'approve_librarian/:id' => 'admins#approve_librarian', :as => :approve_librarian
  get 'login' => 'librarians#login', :as => :login
  get 'studentlogin' => 'students#login' , :as => :studentlogin
  get 'addbookmark/:id' => 'bookmarks#addbookmark', :as => :addbookmark
  get 'unbookmark/:id' => 'bookmarks#unbookmark', :as => :unbookmark
  get 'showbookmarks' => 'bookmarks#showbookmarks', :as => :showbookmarks
  get 'showrequests' => 'books#showrequests', :as => :showrequests
  get 'deleterequest/:request_id' => 'books#deleterequest', :as => :deleterequest
  get 'searchbooks' => 'books#search', :as => :search
end
