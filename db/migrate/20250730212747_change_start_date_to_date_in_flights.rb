class ChangeStartDateToDateInFlights < ActiveRecord::Migration[8.0]
  def change
    change_column :flights, :start_date, :date
  end
end
