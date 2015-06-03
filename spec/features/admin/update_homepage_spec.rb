require 'rails_helper'

describe "Admin updates the homepage" do
  before :each do
    @user = create(:user, email: "foo@bar.com")
    login_as(@user)
  end

  it "saves the tagline" do
    page = create(:page_home)
    visit edit_admin_page_path(page)

    fill_in "page_tagline", with: "The new tagline"
    click_button "Update Page"

    expect(page.reload.tagline).to eq("The new tagline")
  end

  it "saves the quote" do
    page = create(:page_home)
    visit edit_admin_page_path(page)

    fill_in "page_quote", with: "The new quote"
    click_button "Update Page"

    expect(page.reload.quote).to eq("The new quote")
  end

  it "saves the quote_author" do
    page = create(:page_home)
    visit edit_admin_page_path(page)

    fill_in "page_quote_author", with: "The new quote author"
    click_button "Update Page"

    expect(page.reload.quote_author).to eq("The new quote author")
  end

end