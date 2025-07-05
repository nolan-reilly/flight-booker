class AddStartDateTimeAndDurationToFlights < ActiveRecord::Migration[8.0]
  def change
    add_column :flights, :duration, :integer
    add_column :flights, :departure_time, :datetime
  end
end
