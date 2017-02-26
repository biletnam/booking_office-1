class CreateCarraiges < ActiveRecord::Migration[5.0]
  def change
    create_table :carriages do |t|
      t.string :number, null: false
      t.string :kind
      t.integer :upper_seats, default: 0
      t.integer :lower_seats, default: 0

      t.timestamps
    end
  end
end
