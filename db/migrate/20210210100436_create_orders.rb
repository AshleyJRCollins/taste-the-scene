class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :option
      t.integer :number_of_boxes
      t.string :address
      t.string :telephone_number
      t.string :email
      t.string :dietary_requirements

      t.timestamps
    end
  end
end
