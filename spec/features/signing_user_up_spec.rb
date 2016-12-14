require "rails_helper"

RSpec.feature("signing users up") do 

	scenario "with valid credentials" do
		visit "/"

		click_link "Sign Up"
		fill_in "First name", with: "John"
		fill_in "Last name", with: "Doe"
		fill_in "Email", with: "sam@example.com"
		fill_in "Password", with: "password"
		fill_in "Password confirmation", with: "password"

		click_button "Sign up"

		expect(page).to have_content("You have signed up successfully")
		visit "/"
		expect(page).to have_content("John Doe")
	end
end