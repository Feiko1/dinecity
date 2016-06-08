class Restaurant < ActiveRecord::Base
    belongs_to :user
    has_many :photos, dependent: :destroy
    has_many :deals, dependent: :destroy

end
