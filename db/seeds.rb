# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'mtg_sdk'
require 'pry'

gp = Tournament.create(name: 'GP Vegas', location: 'Las Vegas, Nevada', format: 'standard', no_of_players: '8')
deck = Deck.create(name: 'Jund', placing: 1, player: 'Mike Hawley', tournament_id: gp.id)
card = MTG::Card.where(name: 'blooming_marsh').all
blooming_marsh = Card.create(name: card[0].name, colors: 'colorless', number_played: 4,
  img_url: card[0].image_url, main?: true, deck_id: deck.id)
