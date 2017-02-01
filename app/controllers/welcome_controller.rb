class WelcomeController < ApplicationController

  # def index
  # end


  def index
      @contact = Welcome.new(contact_params)
      if @contact.deliver
        redirect_to :back, :notice => "Thank you for contacting us, We'll get back to you shortly!"
      else
        flash.now[:error] = 'Sorry, it looks like there was an error with your message, Please give us a call or shoot us a text at ....'
      end
    end

  #   def create
  #   @contact = Welcome.new(params[:page])
  #   if @contact.deliver
  #     redirect_to :back, :notice => "Thank you for contacting us, We'll get back to you shortly!"
  #   else
  #     flash.now[:error] = 'Sorry, it looks like there was an error with your message, Please give us a call or shoot us a text at ....'
  #   end
  # end

  def new
    @contact = Welcome.new
  end

  def create
    @contact = Welcome.new(params[:welcome])
    @contact.request = request
    if @contact.deliver
      flash[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to root_url
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
  #
  # private
  #   def contact_params
  #     params.require(:welcome).permit(:name, :email, :message)
  #   end
end
