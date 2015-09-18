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

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :name, presence: true
  validates :address, presence: true

  has_attached_file :picture,
    styles: {
      large: "1400x933>",
      medium: "350x233>",
      thumbnail: "70x40>"},
      default_url: "default_:style.jpg"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

end
