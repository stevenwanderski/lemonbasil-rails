class ContactMailer < ApplicationMailer
  def new_contact(contact)
    @contact = contact
    mail(to: "steven@bxcreative.com", subject: 'New lemonandbasil.co contact')
  end
end
