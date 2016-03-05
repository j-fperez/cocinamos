class PlatosController < ApplicationController
	def index
		@platos = Plato.all
	end

	def show
		@plato = Plato.find(params[:id])
	end

	def new
	end

	def create
		#render plain: params[:plato].inspect
		@plato= Plato.new(plato_params)

		@plato.save
		redirect_to @plato
	end

	private
	def plato_params
		params.require(:plato).permit(:nombre)		
	end
end