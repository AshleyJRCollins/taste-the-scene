class Order < ApplicationRecord
  validates :name, presence: true
  validates :option, inclusion: { in: 1..3 }
  validates :number_of_boxes, inclusion: { in: 1..10 }
  validates :address, presence: true
  validates :telephone_number, presence: true
  validates :email, presence: true
end
