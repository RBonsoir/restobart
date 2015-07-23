# == Schema Information
#
# Table name: restaurants
#
#  id          :integer          not null, primary key
#  name        :string
#  address     :string
#  latitude    :string
#  longitude   :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
end
