Rails.application.routes.draw do
  root to: 'site#index'

  def add_swagger_route http_method, path, opts = {}
    full_path = path.gsub(/{(.*?)}/, ':\1')
    match full_path, to: "#{opts.fetch(:controller_name)}##{opts[:action_name]}", via: http_method
  end

  add_swagger_route 'GET', '/mhawley/mtg-tournaments/1.0.0/cards/findByColors', controller_name: 'cards', action_name: 'cards_find_by_colors_get'
  add_swagger_route 'GET', '/mhawley/mtg-tournaments/1.0.0/cards/findByName', controller_name: 'cards', action_name: 'cards_find_by_name_get'
  add_swagger_route 'GET', '/mhawley/mtg-tournaments/1.0.0/cards', controller_name: 'cards', action_name: 'index'
  add_swagger_route 'GET', '/mhawley/mtg-tournaments/1.0.0/cards/{id}', controller_name: 'cards', action_name: 'show'
  add_swagger_route 'GET', '/mhawley/mtg-tournaments/1.0.0/decks/findByName', controller_name: 'decks', action_name: 'decks_find_by_name_get'
  add_swagger_route 'GET', '/mhawley/mtg-tournaments/1.0.0/decks/findByPlacing', controller_name: 'decks', action_name: 'decks_find_by_placing_get'
  add_swagger_route 'GET', '/mhawley/mtg-tournaments/1.0.0/decks/findByPlayer', controller_name: 'decks', action_name: 'decks_find_by_player_get'
  add_swagger_route 'GET', '/mhawley/mtg-tournaments/1.0.0/decks', controller_name: 'decks', action_name: 'index'
  add_swagger_route 'GET', '/mhawley/mtg-tournaments/1.0.0/decks/{id}', controller_name: 'decks', action_name: 'show'
  add_swagger_route 'GET', '/mhawley/mtg-tournaments/1.0.0/tournaments/findByName', controller_name: 'tournaments', action_name: 'tournaments_find_by_name_get'
  add_swagger_route 'GET', '/mhawley/mtg-tournaments/1.0.0/tournaments', controller_name: 'tournaments', action_name: 'index'
  add_swagger_route 'GET', '/mhawley/mtg-tournaments/1.0.0/tournaments/{id}', controller_name: 'tournaments', action_name: 'show'
  add_swagger_route 'POST', '/mhawley/mtg-tournaments/1.0.0/tournaments', controller_name: 'tournaments', action_name: 'create'
end
