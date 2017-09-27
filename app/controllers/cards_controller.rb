class CardsController < Api::V1::BaseController

  def cards_find_by_colors_get
    colors = params[:colors]
    card = Card.where(colors: colors)

    render json: card
  end

  def cards_find_by_name_get
    name = params[:name]
    card = Card.where(params[:name])

    render json: card
  end

  def index
    render json: Card.all
  end

  def show
    if params[:name]
      cards_find_by_name_get
    elsif params[:colors]
      cards_find_by_colors_get
    else
      card = Card.find(params[:id])
      render json: card
    end
  end
end
