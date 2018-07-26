class AddParentIdColumnToChunks < ActiveRecord::Migration[5.2]
  def change
    add_column :chunks, :parent_id, :integer
  end
end
