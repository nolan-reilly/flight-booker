class CreateAirports < ActiveRecord::Migration[8.0]
  def change
    create_table :airports do |t|
      t.string :name
      t.string :airport_code

      t.timestamps
    end
  end
end
