class AddAddressesToSpaces < ActiveRecord::Migration[5.1]
  def change
    add_column :spaces, :address, :string
  end
end
