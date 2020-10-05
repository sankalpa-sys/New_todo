class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
   def create
     @contact = Contact.create(contact_params)
    if @contact.save
       flash[:notice] = "Your message was sent. We will get back to you soon. "
       redirect_to root_path
    else
      flash[:alert] = "Sorry! Your message was not sent. Try again."
      redirect_to contacts_new_path
    end
   end
   private
   def contact_params
     params.require(:contact).permit(:fullname, :email, :phone, :message)
   end
end
