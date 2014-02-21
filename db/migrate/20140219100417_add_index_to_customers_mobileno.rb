class AddIndexToCustomersMobileno < ActiveRecord::Migration
  def change
    add_index :customers, :mobileno 
  end
end
