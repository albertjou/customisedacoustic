# == Schema Information
#
# Table name: fretboards
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  price       :decimal(, )
#  image       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Fretboard < ActiveRecord::Base
  attr_accessible :description, :name, :price, :image

  has_many :guitars
end
