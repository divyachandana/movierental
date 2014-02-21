class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :mobileno
      t.string :moviename
      t.references :customer, index: true
      t.references :movie, index: true

      t.timestamps
    end
  end
end
