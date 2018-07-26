class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :phone_number
      t.string :address
      t.string :email
      t.date :birthdate
      t.string :preferred_name
      t.string :website

      t.timestamps
    end
  end
end
