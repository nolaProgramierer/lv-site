class WelcomeController < ApplicationController
  include WelcomeHelper

  def index
      @contact = Welcome.new(params[:welcome])
    end

  def create
    @contact = Welcome.new(params[:welcome])
    @contact.request = request
    if @contact.deliver
      flash[:notice] = "Thank you for your message. I'll get back to you soon!"
      redirect_to root_path
    else
      flash[:error] = "Message did not send."
      render :index
    end
  end
  #
  # private
  #   def contact_params
  #     params.require(:welcome).permit(:name, :email, :message, :nickname)
  #   end
end
