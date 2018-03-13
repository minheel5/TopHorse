class HorsesController < ApplicationController

	def new
		@horse = Horse.new
	end

	def index
  		@horse = Horse.all
  	end

	def create
		@horse = Horse.new(horse_params)
		if @horse.save
			redirect_to @horse
		end
	end

	def show
    	@horse = Horse.find(params[:id])
  	end

	private
  		def horse_params
    	params.require(:horse).permit(:ranking, :name, :breed, :age, :rider, :country, :score)
  	end


end
