ActiveAdmin.register Guitar do
  index do
    column :id
    column "Body Color", :body_color
    column "Nut material", :nut_material
    column "Nut Width", :nut_width
    column "Right hand", :right_hand
    column "Scale Length", :scale_length
    column "Fretboard", :fretboard_id
    column "Created by", :user_id
  end
end