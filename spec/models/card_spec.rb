require 'rails_helper'

RSpec.describe :Card, type: model do
  let!(:card) { FactoryGirl.create(:card) }

  it 'is valid with valid attributes'

  it 'is not valid without a name'

  it 'is not valid without color(s)'

  it 'is not valid without a number played'

  it 'is not valid without an image url'

  it 'is not valid if it is not in the mainboard/sideboard'
end
