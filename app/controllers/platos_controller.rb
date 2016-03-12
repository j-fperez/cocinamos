class PlatosController < ApplicationController
	def index
		@platos = Plato.all
	end

	def show
		@plato = Plato.find(params[:id])
	end

	def new
		@plato = Plato.new
	end
	
	def edit
		@plato = Plato.find(params[:id])
	end

	def create
		#render plain: params[:plato].inspect
		@plato= Plato.new(plato_params)
		#@plato.save
		if @plato.save
			redirect_to @plato
		else
			render 'new'
		end
		#redirect_to @plato
	end

	def update
		@plato = Plato.find(params[:id])

		if @plato.update(plato_params)
			redirect_to @plato
		else
			render 'edit'
		end
	end
	
	private
	def plato_params
		params.require(:plato).permit(:nombre, :receta)		
	end
end