class CreateFretboards < ActiveRecord::Migration
  def change
    create_table :fretboards do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
