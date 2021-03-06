require 'rails_helper'

RSpec.feature 'Search for an image' do
  let(:title) { ['Journey to Skull Island'] }
  let(:creator) { ['Quest, Jane'] }
  let(:keyword) { ['Pirates', 'Adventure'] }
  let(:visibility) { Hydra::AccessControls::AccessRight::VISIBILITY_TEXT_VALUE_PUBLIC }
  let(:photographer) { ['John Smith'] }
  let(:image) do
    Image.new(title: title,
             creator: creator,
             keyword: keyword,
             visibility: visibility,
             photographer: photographer)
  end

  context 'general search' do
    before do
      image.save
    end
    scenario "Search for an image" do
      visit("/")
      fill_in "q", with: "Journey"
      click_button "Go"
      # Uncomment this to display the HTML capybara is seeing
      # puts page.body
      expect(page).to have_content image.title.first
      expect(page).to have_content image.creator.first
      expect(page).to have_content image.keyword.first
      expect(page).to have_content image.photographer.first
    end
  end
end
