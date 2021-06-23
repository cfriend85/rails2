Rails.application.routes.draw do
  get 'secrets/index'

  get '/' => 'sessions#new'
  post '/register' => 'sessions#create'
  post '/login' => 'sessions#login'
  get '/users/:id' => 'users#show'
  get '/logout' => 'sessions#destroy'
  get '/edit/:id' => 'users#edit'
  patch 'edit/:id' => 'users#update'
  delete '/delete' => 'users#destroy'
  
  get '/secrets' => 'secrets#index'
  get '/secrets/add/:id' => 'secrets#add'
  post '/secrets/create/:id' => 'secrets#create'
  delete '/secrets/:id' => 'secrets#destroy'
  post '/likes/new' => 'likes#create'
  delete '/unlike/new/:id' => 'likes#destroy'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
end
