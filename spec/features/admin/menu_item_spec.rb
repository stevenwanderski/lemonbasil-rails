require 'rails_helper'

describe "Admin creates a menu item" do
  before :each do
    @user = create(:user, email: "foo@bar.com")
    login_as(@user)
  end

  it "saves the menu item" do
    category = create(:category)
    visit new_admin_category_menu_item_path(category_id: category.id)

    fill_in "menu_item_name", with: "New Menu Item"
    fill_in "menu_item_description", with: "Menu Item Description"
    click_button "Create Menu item"

    expect(category.menu_items.reload.first.name).to eq("New Menu Item")
  end

  it "updated the menu item" do
    category = create(:category)
    menu_item = create(:menu_item, category: category)
    visit edit_admin_category_menu_item_path(category_id: category.id, id: menu_item.id)

    fill_in "menu_item_name", with: "Updated Menu Item"
    click_button "Update Menu item"

    expect(category.menu_items.reload.first.name).to eq("Updated Menu Item")
  end
end