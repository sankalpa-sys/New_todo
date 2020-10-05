class MessagesController < ApplicationController
  def new
    @message = Message.new
  end
  def create
    @message = Message.create(message_params)

      flash[:notice] = "Your message has been sent. We will get back to you soon. "
      redirect_to root_path
  end
  def message_params
    params.require(:message).permit(:fullname, :email, :phone, :message)
  end
end
