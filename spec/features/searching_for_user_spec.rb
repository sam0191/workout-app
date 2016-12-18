require "rails_helper"

RSpec.feature "searching for User" do 
	before do 
		@john = User.create(first_name: "john", last_name: "Doe", email: "johndoe@example.com", password: "password")
		@sarah = User.create(first_name: "sarah", last_name: "Doe", email: "sarah@example.com", password: "password")
	end

	scenario "with existining names return those users" do 
		visit "/"

		fill_in "search_name", with: "Doe"
		click_button "Search"

		expect(page).to have_content(@john.full_name)
		expect(page).to have_content(@sarah.full_name)
		expect(current_path).to eq("/dashboard/search")
	end
end