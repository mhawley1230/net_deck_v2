require 'rails_helper'

feature 'User views tournaments' do
  let!(:tournament) { FactoryGirl.create(:tournament) }
  let!(:tournament2) { FactoryGirl.create(:tournament, name: 'PT Kaladesh') }

  context 'As a user' do
    scenario 'when I go to the root path, I see a list of recipes' do
      visit '/'

      expect(page).to have_content(tournament.name)
      expect(page).to have_content(tournament2.name)
    end

    scenario 'I can see a list of the recipes being reviewed' do
      visit tournaments_path

      expect(page).to have_content(tournament.name)
      expect(page).to have_content(tournament2.name)
    end
  end
end
