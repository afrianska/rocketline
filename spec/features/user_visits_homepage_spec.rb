require "rails_helper"

RSpec.feature "User visits homepage" do
    scenario "successfull and see a logo" do
        visit root_path
        expect(page).to have_content "RocketLine"
    end

end