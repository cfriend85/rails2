Rails.application.routes.draw do

get '/' => 'dojos#index'
get '/dojos/new' => 'dojos#new'
post '/dojos' => 'dojos#addnew'
get '/display/:id' => 'dojos#show'
post '/edit/:id' => 'dojos#editdojo'
get '/edit/:id' => 'dojos#edit'
get '/destroy/:id' => 'dojos#delete'


get '/dojos/:dojo_id/students' => 'students#index'
get '/dojos/:dojo_id/students/new' => 'students#new'
post '/dojos/:dojo_id/students' => 'students#create'
get '/dojos/:dojo_id/students/:id' => 'students#show'
get '/dojos/:dojo_id/students/:id/edit' => 'students#edit'
put '/dojos/:dojo_id/students/:id' => 'students#update'
delete '/dojos/:dojo_id/students/:id' => 'students#destroy'
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
