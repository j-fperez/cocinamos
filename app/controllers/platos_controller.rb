class PlatosController < ApplicationController
	def new
	end

	def create
		render plain: params[:plato].inspect
	end
end
