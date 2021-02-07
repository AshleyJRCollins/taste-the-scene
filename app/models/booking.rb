class Booking < ApplicationRecord
  validates :name, presence: true
  validates :number_of_boxes, inclusion: { in: 1..10 }
  validates :address, presence: true
  validates :telephone_number, presence: true
end
