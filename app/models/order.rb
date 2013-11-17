class Order < ActiveRecord::Base
  attr_accessible :shipping_address, :status
end
