require 'rails_helper'

describe "New contact" do
  it "saves the contact" do
    visit new_contact_path

    fill_in "contact_name", with: "Frank Zappa"
    fill_in "contact_email", with: "frank@zappa.com"
    fill_in "contact_message", with: "Well howdy"
    click_button "Submit"

    contact = Contact.first
    expect(contact.name).to eq("Frank Zappa")
    expect(contact.email).to eq("frank@zappa.com")
    expect(contact.message).to eq("Well howdy")
  end
end