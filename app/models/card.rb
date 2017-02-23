class Card < ApplicationRecord
  belongs_to :loan
  has_many :card_loan_methods
  has_many :loan_methods, through: :card_loan_methods
end
