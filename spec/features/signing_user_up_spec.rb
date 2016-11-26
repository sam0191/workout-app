require "rails_helper"

RSpec.feature("signing users up") do 

	scenario "with valid credentials" do
		visit "/"

		click_link "Sign Up"

		fill_in "Email", with: "sam@example.com"
		fill_in "Password", with: "11111111"
<<<<<<< HEAD
		fill_in "Password confirmation", with: "11111111"

		click_button "Sign up"
=======
		fill_in "Password Confirmation", with: "11111111"

		click_button "Sign Up"
>>>>>>> 5db53648defa98291b4ad3d010902b3d71bfdb07
		expect(page).to have_content("You have signed up successfully")
	end
end