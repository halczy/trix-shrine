require 'rails_helper'

feature "Content Creation" do

  scenario "User can write content and post it" do
    visit "posts/new"
    fill_in_trix_editor "trix_input_post", with: "This is a sample post"
    click_on('Create Post')
    expect(page).to have_content('This is a sample post')
  end

end
