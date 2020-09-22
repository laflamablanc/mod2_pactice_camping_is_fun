class Signup < ApplicationRecord
  belongs_to :activity
  belongs_to :camper

  validates :start_time, numericality: {in: 0..23}
end
