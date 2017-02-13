class AddNumberToTickers < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :number, :string
  end
end
