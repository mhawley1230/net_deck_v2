require 'rails_helper'

RSpec.describe :Card, type: :model do
  let!(:card) { FactoryGirl.create(:card) }

  it 'is valid with valid attributes' do
    expect(card).to be_valid
  end

  it 'is not valid without a name' do
    card.name = nil
    expect(card).to_not be_valid
  end

  it 'is not valid without color(s)' do
    card.colors = nil
    expect(card).to_not be_valid
  end

  it 'is not valid without a number played' do
    card.number_played = nil
    expect(card).to_not be_valid
  end

  it 'is not valid without an image url' do
    card.img_url = nil
    expect(card).to_not be_valid
  end
end
