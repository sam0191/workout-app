require "rails_helper"

RSpec.feature "Signing User in" do
	before do
		@sam = User.create!(first_name: "sam", last_name: "asa", email: "sam@example.com", password: "11111111")
	end

	scenario "with valid credentials" do
		visit "/"

		click_link "Sign in"

		fill_in "Email", with: @sam.email
		fill_in "Password", with: @sam.password

		click_button "Log in"

		expect(page).to have_content("Signed in successfully.")
		expect(page).to have_content("Signed in as #{@sam.email}")
	end
end