class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :details
      t.datetime :due_date
      t.integer :priority
      t.integer :completion_time
      t.string :label

      t.timestamps
    end
  end
end
