class AddCounterCacheToDependencies < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :dependencies_count, :integer, default: 0
    add_column :dependencies, :dependents_count, :integer, default: 0
  end
end
