class RemoveDepsAndRedudantTaskFields < ActiveRecord::Migration[5.2]
  def change
    drop_table :dependencies
    remove_column :tasks, :title
    remove_column :tasks, :details
    remove_column :tasks, :label
    remove_column :tasks, :dependencies_count
  end
end
