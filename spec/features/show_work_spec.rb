require 'rails_helper'

RSpec.feature 'Display an Work' do
  let(:title)      { ['Journey to Skull Island'] }
  let(:creator)    { ['Quest, Jane'] }
  let(:keyword)    { ['Pirates', 'Adventure'] }
  let(:visibility) { Hydra::AccessControls::AccessRight::VISIBILITY_TEXT_VALUE_PUBLIC }
  let(:user)       { 'test@example.com' } 
  let(:year)       { ['2010'] }

  let :work do
    Work.create(title:      title,
                creator:    creator,
                keyword:    keyword,
                visibility: visibility,
                depositor:  user,
                year:       year)
  end

  scenario "Show a public Work" do
    visit("/concern/works/#{work.id}")

    expect(page).to have_content work.title.first
    expect(page).to have_content work.creator.first
    expect(page).to have_content work.keyword.first
    expect(page).to have_content work.keyword.last
    expect(page).to have_content work.year.first
  end
end
