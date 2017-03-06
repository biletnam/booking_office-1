class AddIndexToCarriages < ActiveRecord::Migration[5.0]
  def change
  	add_index :carriages, :position
  end
end
