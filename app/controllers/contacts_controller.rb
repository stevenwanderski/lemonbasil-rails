class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.new_contact(@contact).deliver_now
      redirect_to new_contact_path, notice: "Thank you! We will chat soon :)"
    else
      render "new"
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end