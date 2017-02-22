class CardsController < ApplicationController
  def index
    @q = Card.ransack(params[:q])
    @cards = @q.result(distinct: true)
    @loan = Loan.all
    # @cards = Card.all
  end

  def search
    @q = Card.page(params[:page]).search(search_params)
    @cards = @q.result(distinct: true)
  end

  private

  def search_params
    params.require(:q).permit!
  end
end
