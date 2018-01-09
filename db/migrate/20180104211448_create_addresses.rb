class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :state
      t.string :city
      t.string :street
      t.string :postal_code
      t.string :phone_number
      t.string :mobile_phone

      t.timestamps
    end
  end
end
