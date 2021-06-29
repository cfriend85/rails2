Rails.application.routes.draw do
  get '/' => 'sessions#index'
  post '/register' => 'sessions#register'
  post '/login' => 'sessions#login'
  get '/logout' => 'sessions#logout'


  get '/events' => 'events#index'
  post '/events/new' => 'events#add'
  get '/events/:id' => 'events#show'
  post '/new/attendee/:id' => 'events#new_attendee'
  delete '/remove/attendee/:id' => 'events#destroy_attendee'
  delete '/event/delete/:id' => 'events#destroy'
  post '/comment/new/:id' => 'events#new_comment'



  get '/users/:id' => 'users#index'
  get '/edit/:id' => 'users#edit'
  patch '/update/:id' => 'users#update'
  

  # get '*path' => redirect("/users/:id")
  
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
  #   end
end
