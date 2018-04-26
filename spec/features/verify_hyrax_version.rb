require 'rails_helper'

RSpec.feature 'Verify Hyrax Version' do

  scenario "Render main page" do
    visit("/")

    expect(page).to have_content 'Hyrax v2.1.0.rc1'
  end
end
