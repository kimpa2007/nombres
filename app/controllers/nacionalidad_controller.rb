class NacionalidadController < ApplicationController

  # GET /nacionalidades
  def index
	@nacionalidades = Nacionalidad.all
  end

end
