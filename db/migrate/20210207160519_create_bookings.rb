class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.integer :number_of_boxes
      t.string :address
      t.string :dietary_requirements
      t.string :telephone_number

      t.timestamps
    end
  end
end
