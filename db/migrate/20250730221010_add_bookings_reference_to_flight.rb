class AddBookingsReferenceToFlight < ActiveRecord::Migration[8.0]
  def change
    add_reference :flights, :booking, null: false, foreign_key: true
  end
end
