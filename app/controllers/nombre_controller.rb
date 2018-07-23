class NombreController < ApplicationController

  # GET /nombres
  def index

    if params[:id]
        @nacionalidad = Nacionalidad.find(params[:id])
        @nombres = @nacionalidad.nombres.all
    else
        @nombres = Nombre.all
    end
  end

  # post "nombre/create"
  def create
    @nombre = Nombre.create nombre: params[:nombre], caracteristica: params[:caracteristica]

    params[:nacionalidads].each do |nacionalidad|
      @nombre.nacionalidads << Nacionalidad.find_by_id(nacionalidad)
    end

  	if @nombre.save
	  	flash[:success] = "El nombre creado."    
	    redirect_to nombres_url
	else
	  	flash[:danger] = "El nombre no ha podido ser creado."    
  	end
  end

  #get "nombre/new"
  def new  
  	@nacionalidads = Nacionalidad.all
  end

  #get nombre/edit/:id
  def edit
    @nombre = Nombre.find(params[:id])
    @nacionalidads = Nacionalidad.all
  end

  #patch nombre/edit/:id
  def update
    @nombre = Nombre.find(params[:id])


    if @nombre

    	@nacionalidads = []
    	params[:nacionalidads].each do |nacionalidad|
	      @nacionalidads.push(Nacionalidad.find_by_id(nacionalidad))
	    end

	    @nombre.nacionalidads = @nacionalidads

	    if @nombre.update nombre: params[:nombre], caracteristica: params[:caracteristica]
	      	flash[:success] = "El nombre fue modificado" 
		 	redirect_to nombres_url 
      	else
      		flash[:danger] = "El nombre no ha podido ser modificado"    
      	end

	else
		 redirect_to nombres_url 
	end

  end

 #delete 'nombre/:id'
  def destroy
    Nombre.find(params[:id]).destroy
    flash[:success] = "El nombre fue eliminado."    
    redirect_to nombres_url
  end


end
