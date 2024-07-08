class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :description
      t.string :category, null: false
      t.decimal :price, null: false
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
