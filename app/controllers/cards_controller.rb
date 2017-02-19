class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def search
    @cards = Card.all
  end
end
