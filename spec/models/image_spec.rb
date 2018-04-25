require 'rails_helper'

RSpec.describe Image do
  describe '#photographer' do
    it 'has no value when created' do
      image = Image.new
      expect(image.photographer).to be_empty
    end
    it 'can set value' do
      image = Image.new
      image.photographer = ['Don John']
      expect(image.photographer).to eq ['Don John']
    end
  end
end
