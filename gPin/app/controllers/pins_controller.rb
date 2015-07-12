class PinsController < ApplicationController

	def index
		@pins = Pin.all
		render :index
	end

	def new
		@pin = Pin.new
	end

	def create 
		Pin.create(pin_params)
		redirect_to '/'
	end

	def show
		@pin = Pin.find_by_id(params[:id])
	end 

	def edit
		@pin = Pin.find_by_id(params[:id])
	end

	def update
		pin = Pin.find_by_id(params[:id])
		pin.update_attributes(pin_params)
		redirect_to '/'
	end

	def destroy
		pin = Pin.find(params[:id])
		pin.destroy
		redirect_to '/'
	end

	def destroyAll
		@pins = Pin.all
		@pins.destroy
		redirect_to '/'
	end
private
	def pin_params
		params.require(:pin).permit(:pinName, :url, :comment, :imageURL)
	end


end
