Rails.application.routes.draw do

  root "index#index", as: "index"

### NACIONALIDADES ###
  get "nacionalidades" => "nacionalidad#index"  


### NOMBRES ###
  #listar
  get "nombres" => "nombre#index" 
  #listar por nacionalidad
  get "nombres/nacionalidad/:id/" => "nombre#index", as: "nombres_nacionalidad_path"
 

  #crear
  post "nombre/create" => "nombre#create", as: "nombre_create"  
  get "nombre/new" => "nombre#new"

  #editar
  patch 'nombre/edit/:id' => 'nombre#update',  as: "nombre_upd"
  get "nombre/edit/:id" => "nombre#edit",  as: "nombre_edit" 

  #eliminar
  delete 'nombre/:id' => 'nombre#destroy', as: "nombre_destroy"

end
