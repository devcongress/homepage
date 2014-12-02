Devconf::Application.routes.draw do
  root to: 'pages#index'


  resources :titles do
    resources :comments
  end

  # get '/exchange'   => 'pages#exchange'
  get '/codecamp'   => 'pages#codecamp'
  get '/thanks'		=> 'pages#thankyou'
  get '/news'		=> redirect('http://news.devcongress.com')
  get '/forge'		=> redirect('http://forge.devcongress.com')
  get '/exchange'	=> redirect('http://exchange.devcongress.com')

end