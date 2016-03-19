class CocinerosController < ApplicationController
	def index
		@cocineros = Cocinero.all
	end

	def show
		@cocinero = Cocinero.find(params[:id])
	end

	def new
		@cocinero = Cocinero.new
	end

	def edit
		@cocinero = Cocinero.find(params[:id])
	end

	def create
		@cocinero = Cocinero.new(cocinero_params)
		if @cocinero.save
			redirect_to @cocinero
		else
			render 'new'
		end
	end

	def update
		@cocinero = Cocinero.find(params[:id])

		if @cocinero.update(cocinero_params)
			redirect_to @cocinero
		else
			render 'edit'
		end
	end
	
	def destroy
		@cocinero = Cocinero.find(params[:id])
		@cocinero.destroy

		redirect_to cocineros_path
	end

	private
		def cocinero_params
			params.require(:cocinero).permit(:nombre_cocinero, :apellido_1_cocinero, :apellido_2_cocinero, :dni_cocinero, :alias_cocinero)
		end
end	