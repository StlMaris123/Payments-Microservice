class CreateTillNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :till_numbers do |t|
      t.string :doctor_name
      t.string :contact_number
      t.integer :till_number

      t.timestamps
    end
  end
end
