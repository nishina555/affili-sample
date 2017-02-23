class CreateLoanMethods < ActiveRecord::Migration[5.0]
  def change
    create_table :loan_methods do |t|
      t.string :method

      t.timestamps
    end
  end
end
