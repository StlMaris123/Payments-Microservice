class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.references :user, null: false, foreign_key: true
      t.string :productName, default: 'BeFree'
      t.string :from_bank_account
      t.string :from_account_name
      t.string :from_account_number
      t.string :from_bank_code
      t.string :from_currency
      t.float :amount
      t.string :description
      t.string :to_bank_account
      t.string :to_account_number
      t.string :to_account_name
      t.string :to_bank_code
      t.string :to_currency_code

      t.timestamps
    end
  end
end
