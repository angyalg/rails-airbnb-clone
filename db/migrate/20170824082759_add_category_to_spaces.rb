class AddCategoryToSpaces < ActiveRecord::Migration[5.1]
  def change
    add_column :spaces, :category, :string
  end
end
