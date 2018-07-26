class RenameAttributesToFacets < ActiveRecord::Migration[5.2]
  def change
    rename_table :attributes, :facets
  end
end
