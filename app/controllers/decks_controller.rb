class DecksController < Api::V1::BaseController

  def decks_find_by_name_get
    name = params[:name]
    deck = Deck.where(name: name)

    render json: deck
  end

  def decks_find_by_placing_get
    placing = params[:placing]
    deck = Deck.where(placing: placing)

    render json: deck
  end

  def decks_find_by_player_get
    player = params[:player]
    deck = Deck.where(player: player)

    render json: deck
  end

  def index
    render json: Deck.all
  end

  def show
    if params[:name]
      decks_find_by_name_get
    elsif params[:placing]
      decks_find_by_placing_get
    elsif params[:player]
      decks_find_by_player_get
    else
      deck = deck.find(params[:id])

      render json: deck
    end
  end
end
