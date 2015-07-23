# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  content       :text
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_reviews_on_restaurant_id  (restaurant_id)
#

class Review < ActiveRecord::Base
  belongs_to :restaurant
  # validates :content, length: { minimum: 20 }
end
