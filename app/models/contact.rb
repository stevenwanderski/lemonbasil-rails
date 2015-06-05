class Contact < ActiveRecord::Base
  after_create :notify_admin

  validates_presence_of :name, :email, :message

  private

  def notify_admin
    # Send an email here
  end
end
