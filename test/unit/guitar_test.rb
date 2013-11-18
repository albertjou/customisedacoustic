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

require 'test_helper'

class GuitarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
