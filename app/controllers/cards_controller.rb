class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def search
    @cards = Card.page(params[:page])
  end
end
