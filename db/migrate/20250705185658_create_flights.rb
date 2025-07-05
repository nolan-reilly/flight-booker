class CreateFlights < ActiveRecord::Migration[8.0]
  def change
    create_table :flights do |t|
      t.integer :departure_airport
      t.integer :arrival_airport

      t.timestamps
    end
  end
end
