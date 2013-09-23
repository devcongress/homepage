Devconf::Application.routes.draw do
  root to: 'pages#index'

  resources :attendees
    
  resources :titles do
  	resources :comments
  end
  
  post 'hackers', to: 'hackers#create'


  match '/register', 			to: 'attendees#new', 	    via: :get
  match '/agenda',	 			to: 'pages#agenda',  	    via: :get
  match '/submit_title', 	to: 'titles#index',       via: :get
  match '/speakers',			to: 'pages#speakers',	    via: :get
  match '/about',         to: 'pages#about',        via: :get
	match '/reg',						to: 'pages#reg',			    via: :get
  match '/requirements',  to: 'pages#requirements', via: :get
  match '/say_thanks',    to: 'pages#say_thanks',   via: :get
	match '/hack',		      to: 'pages#hack',		      via: :get
  match '/mission',       to: 'pages#mission',      via: :get
end
