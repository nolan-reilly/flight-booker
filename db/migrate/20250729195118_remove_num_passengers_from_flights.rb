class RemoveNumPassengersFromFlights < ActiveRecord::Migration[8.0]
  def change
    remove_column :flights, :num_passengers, :integer
  end
end
