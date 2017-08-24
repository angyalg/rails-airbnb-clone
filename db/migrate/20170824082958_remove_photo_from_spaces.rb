class RemovePhotoFromSpaces < ActiveRecord::Migration[5.1]
  def change
    remove_column :spaces, :photo, :string
  end
end
