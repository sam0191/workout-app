require "rails_helper"

RSpec.feature("signing users up") do 

	scenario "with valid credentials" do
		visit "/"

		click_link "Sign Up"

		fill_in "Email", with: "sam@example.com"
		fill_in "Password", with: "11111111"
		fill_in "Password Confirmation", with: "11111111"

		click_button "Sign Up"
		expect(page).to have_content("You have signed up successfully")
	end
end