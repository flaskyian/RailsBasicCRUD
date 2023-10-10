Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "departments#index"

  #Names App
  get "/names", to: "names#index"
  get "/names/view/:name", to: "names#view"
  get "/names/insert/:name", to: "names#insert"
  get "/names/new", to: "names#new"
  post "/names/create", to: "names#create"
  get "/names/delete/:name", to: "names#delete"

  get "/names/show/img", to: "names#img"

  #Department App #CRUD
  get "/departments", to: "departments#index"
  get "/departments/view/:abbreviation", to: "departments#view"
  get "/departments/delete/:id", to: "departments#delete"
  get "/departments/new", to: "departments#new"
  post "/departments/create", to: "departments#create"
  get "/departments/edit/:id", to: "departments#edit"
  post "/departments/update/:id", to: "departments#update"

end
