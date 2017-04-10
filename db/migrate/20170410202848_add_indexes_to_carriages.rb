class AddIndexesToCarriages < ActiveRecord::Migration[5.0]
  def change
    add_index :carriages, [:id, :type]
    add_index :carriages, [:position, :train_id]
  end
end
