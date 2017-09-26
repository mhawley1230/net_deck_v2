class TournamentsController < Api::V1::BaseController
  def index
    render json: Tournament.all
    # render json: {"message" => "yes, it worked"}
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
    # Your code here

    render json: {"message" => "yes, it worked"}
  end

  private

  def tournament_params
    params.require(:tournament).permit(:id, :name, :location, :format, :no_of_players, :decks)
  end
end
