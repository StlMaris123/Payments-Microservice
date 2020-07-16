class CreateMobilePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :mobile_payments do |t|
      t.float :amount
      t.integer :till_number
      t.text :reason_for_payment

      t.timestamps
    end
  end
end
