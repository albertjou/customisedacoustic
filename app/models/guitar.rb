# == Schema Information
#
# Table name: guitars
#
#  id              :integer          not null, primary key
#  right_hand      :boolean          default(TRUE)
#  body_shape      :string(255)
#  scale_length    :decimal(, )
#  nut_width       :decimal(, )
#  nut_material    :string(255)
#  body_color      :string(255)
#  pickguard       :boolean
#  bridge_material :string(255)
#  pickguard_color :string(255)
#  guitar_string   :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Guitar < ActiveRecord::Base
  attr_accessible :body_color, :body_shape, :bridge_material, :guitar_string, :nut_material, :nut_width, :pickguard, :pickguard_color, :right_hand, :scale_length
end
