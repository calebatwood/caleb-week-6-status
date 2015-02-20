require 'rails_helper'

describe 'posts' do
  before :each do
    visit root_path
  end

  it 'goes to posts index' do
    expect(page).to have_content "Wicked Awesome Posts"
  end

  it 'creates new post and edit it' do
    click_link "Create New Post"
    expect(page).to have_content "Create an awesome new post"
    fill_in "Status", with: "Ballin"
    fill_in "User", with: "Caleb"
    click_button "Create Post"
    expect(page).to have_content "Check out this sweet post"
    click_link "Edit"
    expect(page).to have_content "Edit this sweet post"
    fill_in "Status", with: "Whippin"
    click_button "Update Post"
    expect(page).to have_content "Post was successfully updated!"
  end

end
