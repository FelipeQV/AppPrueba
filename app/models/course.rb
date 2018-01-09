class Course < ApplicationRecord
  belongs_to :studio
  has_many :appointments, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one :category
end
