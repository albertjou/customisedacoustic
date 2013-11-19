class CreateBodyShapes < ActiveRecord::Migration
  def change
    create_table :body_shapes do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
