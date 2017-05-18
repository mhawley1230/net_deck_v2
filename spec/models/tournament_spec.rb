require 'rails_helper'

RSpec.describe Tournament, type: :model do
  let(:tournament) { FactoryGirl.create(:tournament) }

  it "is valid with valid attributes" do
    expect(tournament).to be_valid
  end

  it "is not valid without a name" do
    tournament.name = nil
    expect(tournament).to_not be_valid
  end

  it "is not valid without a location" do
    tournament.location = nil
    expect(tournament).to_not be_valid
  end

  it "is not valid without a format" do
    tournament.format = nil
    expect(tournament).to_not be_valid
  end

  it "is not valid without a no_of_players" do
    tournament.no_of_players = nil
    expect(tournament).to_not be_valid
  end

  # it "is not valid without a date"
end
