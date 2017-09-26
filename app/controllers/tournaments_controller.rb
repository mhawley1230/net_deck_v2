class TournamentsController < Api::V1::BaseController
  def index
    render json: Tournament.all
  end

  def tournaments_find_by_name_get
    name = params[:name]
    tournament = Tournament.where(name: name)

    render json: tournament
  end

  def show
    if params[:name]
      tournaments_find_by_name_get
    else
      tournament = Tournament.find(params[:id])
    end

    render json: tournament
  end

  def create
    tournament = Tournament.create(tournament_params)

    render json: tournament
  end

  private

  def tournament_params
    params.require(:tournament).permit(:id, :name, :location, :format, :no_of_players, :decks)
  end
end
