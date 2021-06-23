Rails.application.routes.draw do
  root 'users#index'
  get '/hello' => 'users#hello'
  get '/say/hello' => 'users#sayhi'
  get '/say/hello/joe' => 'users#sayhijoe'
  get '/say/hello/michael' => 'users#sayhimike'
  get '/times' => 'users#count'
  get '/times/restart' => 'users#logout'

  get '/users' => 'users#users'
  get '/users/new' => 'users#new'
  get 'users/total' => 'users#total'
  get '/users/:id' => 'users#displayuser'
  get '/users/:id/edit' => 'users#edituser'
  post '/users' => 'users#addnewuser'

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
