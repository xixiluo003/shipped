class BoatsController < ApplicationController

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to :back, notice: "Whoa! Saved!"
    else
      render "home/index", notice: "Not Saved"
    end
  end


  private
    def boat_params
        params.require(:boat).permit(:name, :capacity, :location, :user_id)
    end
end
