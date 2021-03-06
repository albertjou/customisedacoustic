# == Schema Information
#
# Table name: guitars
#
#  id              :integer          not null, primary key
#  right_hand      :boolean          default(TRUE)
#  scale_length    :decimal(, )
#  nut_width       :decimal(, )
#  nut_material    :string(255)
#  body_color      :string(255)
#  pickguard       :boolean
#  pickguard_color :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Guitar < ActiveRecord::Base
  attr_accessible :body_color, :nut_material, :nut_width, :pickguard, :pickguard_color, :right_hand, :scale_length, :user_id, :order_ids, :guitar_string_id, :fretboard_id, :bridge_id, :body_shape_id

  ## Model associations
  has_many :orders
  belongs_to :user
  belongs_to :guitar_string
  belongs_to :fretboard
  belongs_to :bridge
  belongs_to :body_shape

end
