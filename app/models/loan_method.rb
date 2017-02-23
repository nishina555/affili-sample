class LoanMethod < ApplicationRecord
  has_many :card_loan_methods
  has_many :cards, through: :card_loan_methods
end
