require "rails_helper"

RSpec.feature "Creating home page" do 

	scenario do

		visit "/"
		expect(page).to have_link("athletes Den")
		expect(page).to have_link("Home")
		expect(page).to have_content("Workout Lounge")
	end
end