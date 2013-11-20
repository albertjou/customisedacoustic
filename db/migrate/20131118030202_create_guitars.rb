class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.boolean :right_hand, :default => true
      t.decimal :scale_length
      t.decimal :nut_width
      t.string :nut_material
      t.string :body_color
      t.boolean :pickguard
      t.string :pickguard_color
      t.integer :guitar_string_id
      t.integer :fretboard_id
      t.integer :bridge_id
      t.integer :body_shape_id
      t.integer :user_id

      t.timestamps
    end
  end
end
