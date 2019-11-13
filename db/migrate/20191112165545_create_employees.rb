class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.text :firstname
      t.text :lastname
      t.text :email

      t.timestamps
    end
  end
end
