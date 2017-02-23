class CreateCardLoanMethods < ActiveRecord::Migration[5.0]
  def change
    create_table :card_loan_methods do |t|
      t.integer :card_id
      t.integer :loan_method_id

      t.timestamps
    end
  end
end
