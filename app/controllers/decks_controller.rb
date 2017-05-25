class DecksController < ApplicationController
  def show
    @deck = Deck.find(params[:id])
    @cards = @deck.cards
    respond_to do |format|
      format.html
      format.json {
        render json: {
          deck: {
            name: @deck.name,
            player: @deck.player,
            main: @cards.where(main?: true),
            side: @cards.where(main?: false)
          }
        }
      }
    end
  end
end
