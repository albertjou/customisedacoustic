# == Schema Information
#
# Table name: orders
#
#  id               :integer          not null, primary key
#  shipping_address :text
#  status           :string(255)      default("customising")
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Order < ActiveRecord::Base
  attr_accessible :shipping_address, :status
end
