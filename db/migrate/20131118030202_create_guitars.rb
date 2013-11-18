class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.boolean :right_hand, :default => true
      t.string :body_shape
      t.decimal :scale_length
      t.decimal :nut_width
      t.string :nut_material
      t.string :body_color
      t.boolean :pickguard
      t.string :bridge_material
      t.string :pickguard_color
      t.string :guitar_string

      t.timestamps
    end
  end
end
