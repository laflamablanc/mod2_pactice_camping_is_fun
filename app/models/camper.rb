class Camper < ApplicationRecord
  has_many :signups
  has_many :activities, through: :signups


  validates :name, uniqueness: true
  validates :name, presence: true
  validates :age, numericality: {in: 8..18}
end
