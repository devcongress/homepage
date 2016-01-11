Devconf::Application.routes.draw do
  root to: 'pages#index'


  resources :titles do
    resources :comments
  end

  # get '/exchange'   => 'pages#exchange'
  get '/codecamp'   => 'pages#codecamp'
  get '/thanks'		=> 'pages#thankyou'
  get '/slack'    => redirect('http://slack.devcongress.org')
  get '/smsghcop' => redirect('/smsghcop.html')
  get '/news'		=> redirect('https://gharage.com')
  get '/forge'		=> redirect('http://forge.devcongress.org')
  get '/exchange'	=> redirect('http://exchange.devcongress.org')

end
