class CreateGuitarStrings < ActiveRecord::Migration
  def change
    create_table :guitar_strings do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
