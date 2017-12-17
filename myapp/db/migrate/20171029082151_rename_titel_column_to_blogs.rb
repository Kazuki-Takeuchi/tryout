class RenameTitelColumnToBlogs < ActiveRecord::Migration[5.1]
  def change
      rename_column :blogs, :titel, :title
  end
end
