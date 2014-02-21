class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers , {:id => false} do |t|
      t.string :name
      t.integer :mobileno
      t.string :email
      t.string :address

      t.timestamps
    end
    execute "ALTER TABLE customers ADD PRIMARY KEY (mobileno);"
  end
end
