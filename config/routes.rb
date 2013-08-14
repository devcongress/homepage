Devconf::Application.routes.draw do
  root to: 'pages#index'

  resources :attendees
  
  resources :titles do
  	resources :comments
  end
  
  match '/register', 			to: 'attendees#new', 	via: :get
  match '/agenda',	 			to: 'pages#agenda',  	via: :get
  match '/submit_title', 	to: 'titles#new', 	 	via: :get
  match '/speakers',			to: 'pages#speakers',	via: :get
  match '/about',         to: 'pages#about',    via: :get
	match '/reg',						to: 'pages#reg',			via: :get
  # match '/speak',  to: 'pages#speak',  via: :get
end
