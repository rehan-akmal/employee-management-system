class AddIndexToEmployeeEmail < ActiveRecord::Migration[6.0]
  def change
    add_index :employees, :email, :unique => true, :length => 100
  end
end
