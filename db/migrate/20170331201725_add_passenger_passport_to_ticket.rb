class AddPassengerPassportToTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :passenger, :string
    add_column :tickets, :passport, :string
  end
end
