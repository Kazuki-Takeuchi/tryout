class RenameTitelColumnToEntries < ActiveRecord::Migration[5.1]
  def change
    rename_column :entries, :titel, :title
  end
end
