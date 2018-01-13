require "rails_helper"

RSpec.describe "User Create Post" do
    scenario "successfully" do
        visit root_path
        click_on "Write a story"

        fill_in "Title", with: "My first post"
        fill_in "Body",	with: "Some awesome content"

        click_on "Publish"

        expect(page).to have_content "My first post"  
    end

    scenario "unsuccessfully" do
        visit root_path
        click_on "Write a story"

        fill_in "Title", with: "My first post"
        fill_in "Body",	with: "" 
        click_on "Publish"

        expect(page).to have_css ".error"
        expect(current_path).to eq(new_post_path)    
    end

end
