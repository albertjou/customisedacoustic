# == Schema Information
#
# Table name: orders
#
#  id               :integer          not null, primary key
#  shipping_address :text
#  status           :string(255)      default("customising")
#  notes            :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
