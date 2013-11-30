Devconf::Application.routes.draw do
  root to: 'pages#index'


  resources :titles do
    resources :comments
  end

  get '/about'      => 'pages#about'
  get '/say_thanks' => 'pages#say_thanks'
  get '/exchange'   => 'pages#exchange'
  get '/codecamp'   => 'pages#codecamp'

  # Used to be functional routes
  #
  # resources :attendees
  # post 'hackers', to: 'hackers#create'
  # match '/register',      to: 'attendees#new',          via: :get
  # match '/requirements',  to: 'pages#requirements',     via: :get
  # match '/mission',       to: 'pages#mission',          via: :get
  # match '/hack'           to: 'hackathon#index',        via: :get
  # match '/devcongress',   to: 'devcongress#index',      via: :get
  # get '/hack'       => 'pages#hack'

end
