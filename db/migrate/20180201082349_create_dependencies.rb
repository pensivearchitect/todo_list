class CreateDependencies < ActiveRecord::Migration[5.2]
  def change
    create_table :dependencies do |t|
      t.belongs_to :task
      t.belongs_to :dependent_task
      t.timestamps
      t.index [:task_id, :dependent_task_id], unique: true
    end
  end
end
