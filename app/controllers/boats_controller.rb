class BoatsController < ApplicationController

  def new
    @boat = Boat.new
    puts "\n current_user_ID: #{current_user.id}"
  end

  def create
    @boat = Boat.new(boat_params)
    puts "\n @boat: #{@boat.inspect}"
    puts "\n boat_params: #{boat_params.inspect}"
    if @boat.save
      redirect_to :back, notice: "Whoa! Saved!"
    else
      render "boats/new", notice: "Not Saved"
    end
  end


  private

    def boat_params
        params.require(:boat).permit(:name, :capacity, :location, :user_id)
    end
end
