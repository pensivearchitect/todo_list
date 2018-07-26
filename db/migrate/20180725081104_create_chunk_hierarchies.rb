class CreateChunkHierarchies < ActiveRecord::Migration[5.2]
  def change
    create_table :chunk_hierarchies, id: false do |t|
      t.integer :ancestor_id, null: false
      t.integer :descendant_id, null: false
      t.integer :generations, null: false
    end

    add_index :chunk_hierarchies, [:ancestor_id, :descendant_id, :generations],
      unique: true,
      name: "chunk_anc_desc_idx"

    add_index :chunk_hierarchies, [:descendant_id],
      name: "chunk_desc_idx"
  end
end
