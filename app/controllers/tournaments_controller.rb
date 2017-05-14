class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all.order(created_at: :asc)
  end

  def show
    @tournament = Tournament.find(params[:id])
    @decks = @tournament.decks
  end
end
