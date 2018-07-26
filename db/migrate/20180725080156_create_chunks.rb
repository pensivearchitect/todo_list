class CreateChunks < ActiveRecord::Migration[5.2]
  def change
    create_table :chunks do |t|
      t.string :title
      t.text :content
      t.time :time

      t.timestamps
    end
  end
end
