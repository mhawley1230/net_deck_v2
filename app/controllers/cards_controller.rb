class CardsController < Api::V1::BaseController

  def cards_find_by_colors_get
    render json: {"message" => "yes, it worked"}
  end

  def cards_find_by_name_get
    # Your code here

    render json: {"message" => "yes, it worked"}
  end

  def index
    render json: Card.all
  end

  def show
    if params[:name]
      cards_find_by_name_get
    elsif params[:color]
      cards_find_by_colors_get
    else
      card = Card.find(params[:id])
    end

    render json: card
  end
end
