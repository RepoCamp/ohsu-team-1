# Generated via
#  `rails generate hyrax:work Work`
require 'rails_helper'

RSpec.describe Work do
  describe '#year' do
    it 'has no value when created' do
      work = Work.new
      expect(work.year).to be_empty
    end
    it 'can set value' do
      work = Work.new
      work.year = ['1971']
      expect(work.year).to eq ['1971']
    end
    it 'can set value' do
      work = Work.new
      work.references = ['a reference']
      expect(work.references).to eq ['a reference']
    end
  end
end
