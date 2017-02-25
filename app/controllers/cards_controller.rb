class CardsController < ApplicationController
  def index
    @q = Card.ransack(params[:q])
    @cards = @q.result.includes(:loan_methods)
    @loans = Loan.all
    @loan_methods = LoanMethod.all
  end

  def search
    @q = Card.page(params[:page]).search(search_params)
    @cards = @q.result(distinct: true)
    @search_query = params[:q]
  end

  private

  def search_params
    params.require(:q).permit!
  end
end
