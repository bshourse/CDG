require 'rails_helper'

RSpec.feature "Users integration Tests", type: :feature do
  context "Create new user" do
    before(:each) do
      visit root_path
      within("form") do
      fill_in "Name", with: "Test"
      end
    end

  scenario "Should be successful" do
      fill_in "Email", with: "test06@gnu.com"
      fill_in "Password", with: "123"
      click_button "Create"
      expect(page).to have_link("Dashboard")
  end

  scenario "Should fail" do
      click_button "Create"
      expect(page).to have_no_link("Dashboard")
    end
  end

  context "Update user profile" do
    let!(:user) {User.create(name: "Test", email: "test@gnu.com", password: "123")}
    before(:each) do
      visit root_path
      within("form") do
        fill_in "Name", with: "Test"
        fill_in "Email", with: "test06@gnu.com"
        fill_in "Password", with: "123"
        click_button "Create"
        visit user_edit_path(user)
      end
    end

    scenario "profile updated successfully" do
      within("form") do
        fill_in "Name", with: "New Test name"
        fill_in "Password", with: "123"
      end
      click_button "Update"
      expect(page).to have_content("New Test name")

    end

    scenario "fail. Profile doesn't update" do
      within("form") do
        fill_in "Name", with: ""
    end
      click_button "Update"
      expect(page).to have_field("Name")
    end
  end
end