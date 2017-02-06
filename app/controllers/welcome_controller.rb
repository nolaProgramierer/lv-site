class WelcomeController < ApplicationController
  include WelcomeHelper

  def index
      @contact = Welcome.new(params[:welcome])
    end

  def create
    @contact = Welcome.new(params[:welcome])
    @contact.request = request
    respond_to do |format|
    if @contact.deliver
      flash[:notice] = "Thank you for your message. I'll get back to you soon!"
      # js_page_refresh
      format.js
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
