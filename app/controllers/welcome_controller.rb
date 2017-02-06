class WelcomeController < ApplicationController

  def index
      @contact = Welcome.new(params[:welcome])
    end

  def create
    @contact = Welcome.new(params[:welcome])
    @contact.request = request
    respond_to do |format|
    if @contact.deliver
      # re-initialize Welcome object for cleared form
      @contact = Welcome.new
      format.html { render 'index'}
      format.js   { flash.now[:notice] = @message = "Thank you for your message. I'll get back to you soon!" }
    else
      format.html { render 'index' }
      format.js   { flash.now[:error] = @message = "Message did not send." }
    end
  end
end
end
