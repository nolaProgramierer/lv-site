class WelcomeController < ApplicationController

  def index
      @contact = Welcome.new(params[:welcome])
    end

  def create
    @contact = Welcome.new(params[:welcome])
    @contact.request = request
    respond_to do |format|
    if @contact.deliver
      # flash[:notice] = "Thank you for your message. I'll get back to you soon!"
      # re-initialize Welcome object for cleared form
      @contact = Welcome.new
      format.html { render 'index'}
      format.js { flash[:notice] = "Thank you for your message. I'll get back to you soon!" }
    else
      flash[:error] = "Message did not send."
      render :index
    end
  end
end
end
  #
  # private
  #   def contact_params
  #     params.require(:welcome).permit(:name, :email, :message, :nickname)
  #   end
