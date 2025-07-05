class AddNumPassengersToFlights < ActiveRecord::Migration[8.0]
  def change
    add_column :flights, :num_passengers, :integer
  end
end
