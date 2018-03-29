DemoApp::Application.routes.draw do
  devise_for :members
  resources :microposts
  resources :users

  root :to =>'home#index'
  authenticated :members do
    root 'secret#index', as: :authenticated_root
  end

#   root 'home#index'

end
