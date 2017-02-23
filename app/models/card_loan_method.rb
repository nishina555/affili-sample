class CardLoanMethod < ApplicationRecord
  belongs_to :card
  belongs_to :loan_method
end
