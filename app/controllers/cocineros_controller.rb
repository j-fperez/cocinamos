class CocinerosController < ApplicationController
	def show
		@cocinero = Cocinero.find(params[:id])
	end

	def new
		@cocinero = Cocinero.new
	end

	def create
		@cocinero = Cocinero.new(cocinero_params)

		@cocinero.save
		redirect_to @cocinero
	end

	private
		def cocinero_params
			params.require(:cocinero).permit(:nombre_cocinero, :apellido_1_cocinero, :apellido_2_cocinero, :dni_cocinero, :alias_cocinero)
		end
end	