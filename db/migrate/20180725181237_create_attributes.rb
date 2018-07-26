class CreateAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :attributes do |t|
      t.belongs_to :task, index: true
      t.belongs_to :chunk, index: true
      t.belongs_to :person, index: true
      t.belongs_to :appointment, index: true
      t.index [:task_id, :person_id, :appointment_id], unique: true, name: 'fk_uniqueness_constraint'
      t.timestamps
    end
  end
end
