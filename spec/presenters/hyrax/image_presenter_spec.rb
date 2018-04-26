require 'rails_helper'

RSpec.describe Hyrax::ImagePresenter do
  subject(:presenter) { described_class.new(SolrDocument.new(image.to_solr), nil) }

  let(:title)      { ['Journey to Skull Island'] }
  let(:creator)    { ['Quest, Jane'] }
  let(:keyword)    { ['Pirates', 'Adventure'] }
  let(:visibility) { Hydra::AccessControls::AccessRight::VISIBILITY_TEXT_VALUE_PUBLIC }
  let(:user)       { 'test@example.com' }
  let(:photographer) { ['John Sir'] } 

  let :image do
    Image.new(title:      title,
             creator:    creator,
             keyword:    keyword,
             visibility: visibility,
             depositor:  user,
             photographer: photographer)
  end

  it { is_expected.to have_attributes(title: title, photographer: photographer) }
end
