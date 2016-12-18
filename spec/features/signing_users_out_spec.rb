require "rails_helper"

RSpec.feature "signing users out" do
	before do 
		@sam = User.create!(first_name: "sam", last_name: "abunuwara", email: "sam@example.com", password: "111111")
		visit "/"

		click_link "Sign in"

		fill_in "Email", with: @sam.email
		fill_in "Password", with: @sam.password

		click_button "Log in"
	end
	scenario "sign out" do
		visit "/"		

		click_link "Sign out"

		expect(page).to have_content("Signed out successfully.")
	end
end