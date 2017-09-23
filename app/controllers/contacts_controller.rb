class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "Thank you, we will inform to you as soonest"
      redirect_to "/contact"
    else
      flash[:error] = @contact.errors.full_messages.to_sentence
      render "homes/contact"
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :address, :phone, :email, :content)
    end
end
