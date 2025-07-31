class MakeBookingIdOptionalForFlightsAndPassengers < ActiveRecord::Migration[8.0]
  def change
    change_column_null :flights, :booking_id, true
    change_column_null :passengers, :booking_id, true
  end
end
