require 'rails_helper'

feature 'User views tournament show page' do
  let!(:tournament) { FactoryGirl.create(:tournament) }
  let!(:deck) { FactoryGirl.create(:deck, tournament_id: tournament.id) }
  let!(:deck2) { FactoryGirl.create(:deck, name: 'Mardu Vehicles', tournament_id: tournament.id) }

  context 'As a user' do
    scenario 'I can see the tournament name on the tournament show page' do
      visit tournament_path(tournament)

      expect(page).to have_content(tournament.name)
    end

    scenario 'I can see a location on the tournament show page' do
      visit tournament_path(tournament)

      expect(page).to have_content(tournament.location)
    end

    scenario 'I see the format of the tournament on the tournament show page' do
      visit tournament_path(tournament)

      expect(page).not_to have_content(tournament.format)
    end

    scenario 'I can see a list of decks on the tournament show page' do
      visit tournament_path(tournament)

      expect(page).to have_content(deck.name)
      expect(page).to have_content(deck2.name)
    end
  end
end
