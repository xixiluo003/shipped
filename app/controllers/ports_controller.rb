class PortsController < ApplicationController

  def new
    @port = Port.new
  end

  def create
    @port = Port.new(port_params)
    if @port.save
      redirect_to :back, notice: "Whoa! Saved!"
    else
      render "home/index", notice: "Not Saved"
    end
  end


  private
    def port_params
        params.require(:port).permit(:name, :latitude, :longitude)
    end
end
