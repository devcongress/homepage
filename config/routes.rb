Devconf::Application.routes.draw do
  root to: 'pages#index'


  resources :titles do
    resources :comments
  end

  get '/exchange'   => 'pages#exchange'
  get '/codecamp'   => 'pages#codecamp'

end
