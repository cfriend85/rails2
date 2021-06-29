Rails.application.routes.draw do

get '/' => 'sessions#index'
post '/new' => 'sessions#new'
post '/show' => 'sessions#show'
get '/logout' => 'sessions#destroy'

get '/books' => 'books#index'
post '/books/new' => 'books#create'
get '/books/:id' => 'books#show'
post '/books/update/:id' => 'books#update'


post '/like/:id' => 'favorites#new'
delete '/unlike/:id' => 'favorites#destroy'



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
