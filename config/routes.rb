Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :comments
  resources :projects
  resources :projects do
    resources :comments
  end
end
