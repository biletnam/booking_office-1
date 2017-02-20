class CreateCarraiges < ActiveRecord::Migration[5.0]
  def change
    create_table :carriages do |t|
      t.string :number, null: false
      t.string :kind
      t.integer :seats
      
      
      t.timestamps
    end
  end
end
