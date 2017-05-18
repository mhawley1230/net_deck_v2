require 'rails_helper'

RSpec.describe Deck, type: :model do
  let!(:deck) { FactoryGirl.create(:deck) }

  it 'is valid with valid attributes' do
    expect(deck).to be_valid
  end

  it 'is not valid without a name' do
    deck.name = nil
    expect(deck).to_not be_valid
  end

  it 'is not valid without a placing' do
    deck.placing = nil
    expect(deck).to_not be_valid
  end

  it 'is not valid without a player' do
    deck.player = nil
    expect(deck).to_not be_valid
  end

  it 'is not valid without a tournament_id' do
    deck.tournament_id = nil
    expect(deck).to_not be_valid
  end
end
