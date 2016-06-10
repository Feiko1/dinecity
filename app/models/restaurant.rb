class Restaurant < ActiveRecord::Base

    belongs_to :user
    has_many :photos, dependent: :destroy
    has_many :deals, dependent: :destroy
    has_many :reviews, dependent: :destroy

  geocoded_by :full_address
  after_validation :geocode #, if: :street_name_changed?

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
    where("city_name LIKE ?", "%#{search}%")
  end
private
  def full_address
  self.street_name + self.street_number.to_s + self.city_name + self.country_name + self.postal_code
  end
end
