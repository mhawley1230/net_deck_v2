require 'rails_helper'

RSpec.describe Tournament, type: :model do
  let(:tournament) { FactoryGirl.create(:tournament) }

  it "is valid with valid attributes" do
    expect(tournament).to be_valid
  end

  it "is not valid without a name"

  it "is not valid without a location"

  it "is not valid without a format"

  it "is not valid without a no_of_players"

  # it "is not valid without a date"
end
