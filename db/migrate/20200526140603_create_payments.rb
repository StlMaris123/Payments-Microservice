class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.references :user, null: false, foreign_key: true
      t.string :token
      t.string :charge_id
      t.string :error_message
      t.integer :payment_gateway
      t.monetize :price
      t.string :paypal_plan_name
      t.string :description

      t.timestamps
    end
  end
end
