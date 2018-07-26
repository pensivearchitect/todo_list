class AddForeignKeysToAttributes < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :attributes, :tasks
    add_foreign_key :attributes, :people
    add_foreign_key :attributes, :appointments
  end
end
