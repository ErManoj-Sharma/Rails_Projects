class RenameColumnInFact < ActiveRecord::Migration[7.0]
  def change
    rename_column :facts, :fact, :fact_name
  end
end
