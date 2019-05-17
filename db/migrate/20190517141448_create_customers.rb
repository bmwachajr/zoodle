class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.string :email
      t.date :date_of_birth
      t.string :phone

      t.timestamps
    end
  end
end
