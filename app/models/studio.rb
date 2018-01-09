class Studio < ApplicationRecord
has_one :address, dependent: :destroy
has_many :courses, dependent: :destroy
end
