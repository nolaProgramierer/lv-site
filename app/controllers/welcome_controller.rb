class WelcomeController < ApplicationController

  def index
  end

  def new
    @contact = Welcome.new
  end

  def create
    @contact = Welcome.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to root_url
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

  private
    def contact_params
      params.require(:welcome).permit(:name, :email, :message)
    end
end
