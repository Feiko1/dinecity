class Restaurant < ActiveRecord::Base
    belongs_to :user
    has_many :photos, dependent: :destroy
    has_many :deals, dependent: :destroy

    def self.search(search)
      where("name LIKE ?", "%#{search}%")
      where("city_name LIKE ?", "%#{search}%")
    end
end
