class DisplayController < ApplicationController

  def index
    flash.now[:success] = "success message"
    flash.now[:alert] = "alert message"
    flash.now[:error] = "error message"
    flash.now[:notice] = "notice message"
  end

end
