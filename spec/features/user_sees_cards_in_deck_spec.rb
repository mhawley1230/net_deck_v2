require 'rails_helper'

feature 'User views tournament show page' do
  let!(:tournament) { FactoryGirl.create(:tournament) }
  let!(:deck) { FactoryGirl.create(:deck, tournament_id: tournament.id) }
  let!(:card) { FactoryGirl.create(:card, deck_id: deck.id) }
  let!(:card2) { FactoryGirl.create(:card, name: 'Island', deck_id: deck.id) }

  context 'As a user' do
    scenario 'I can click on a deck to see the cards in a given deck' do
      visit tournament_path(tournament)
      click_link deck.name

      expect(page).to have_content(card.name)
      expect(page).to have_content(card2.name)
    end

    scenario 'I can view the number of a given card played in a deck' do
      visit deck_path(deck)

      expect(page).to have_content(card.number_played)
      expect(page).to have_content(card2.number_played)
    end

    scenario 'I can click on a card to see it\'s image' do
      visit deck_path(deck)
      click_link card.name
      
      expect(page).to have_tag('img')
    end
  end
end
