class CreateSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :spaces do |t|
      t.string :name
      t.text :description
      t.integer :max_capacity
      t.integer :price_per_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
