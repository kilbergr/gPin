class PinsController < ApplicationController

	def index
		@pins = Pin.all
		render :index
	end

	def new
		@pin = Pin.new
	end

	def create 
		@pin = Pin.new(pin_params)
		@pin.save #this line unnecessary
		if @pin.save
			redirect_to pins_path
		else
			#show me new page again
			render :new
			#show with error message
		end
	end

	def show
		@pin = Pin.find_by_id params[:id]
	end 

	def edit
		@pin = Pin.find_by_id params[:id]
	end

	def update
		@pin = Pin.find_by_id params[:id]
		#this line unnecessary 
		@pin.update pin_params #could instead by @pin.save
		if @pin.update pin_params
			redirect_to pin_path @pin
		else
			render :edit
		end
	end

	def destroy
		pin = Pin.find(params[:id])
		pin.destroy
		redirect_to pins_path
	end

	def destroyAll
		@pins = Pin.all
		@pins.destroy
		redirect_to pins_path
	end
private
	def pin_params
		params.require(:pin).permit(:pinName, :url, :comment, :imageURL)
	end


end
