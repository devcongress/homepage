Devconf::Application.routes.draw do
  root to: 'pages#index'

  resources :attendees
  
  match '/agenda', to: 'pages#agenda', via: 'get'
  
end
