# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Seeding Airports..."

airports = [
  { name: "John F. Kennedy International Airport", airport_code: "JFK" },
  { name: "Chicago O'Hare International Airport", airport_code: "ORD" },
  { name: "Los Angeles International Airport", airport_code: "LAX" },
  { name: "Hartsfield-Jackson Atlanta International Airport", airport_code: "ATL" }
]

airports.map { |attrs| Airport.create!(attrs) }

puts "Seeding Flights..."

flights = [
  { departure_airport_id: 1, arrival_airport_id: 2, departure_time: Time.current, duration: 2.hours.from_now },
  { departure_airport_id: 1, arrival_airport_id: 3, departure_time: Time.current, duration: 2.hours.from_now },
  { departure_airport_id: 1, arrival_airport_id: 4, departure_time: Time.current, duration: 2.hours.from_now },

  { departure_airport_id: 2, arrival_airport_id: 1, departure_time: Time.current, duration: 2.hours.from_now },
  { departure_airport_id: 2, arrival_airport_id: 3, departure_time: Time.current, duration: 2.hours.from_now },
  { departure_airport_id: 2, arrival_airport_id: 4, departure_time: Time.current, duration: 2.hours.from_now },

  { departure_airport_id: 3, arrival_airport_id: 1, departure_time: Time.current, duration: 2.hours.from_now },
  { departure_airport_id: 3, arrival_airport_id: 2, departure_time: Time.current, duration: 2.hours.from_now },
  { departure_airport_id: 3, arrival_airport_id: 4, departure_time: Time.current, duration: 2.hours.from_now },

  { departure_airport_id: 4, arrival_airport_id: 1, departure_time: Time.current, duration: 2.hours.from_now },
  { departure_airport_id: 4, arrival_airport_id: 2, departure_time: Time.current, duration: 2.hours.from_now },
  { departure_airport_id: 4, arrival_airport_id: 3, departure_time: Time.current, duration: 2.hours.from_now }
]

flights.map { |attrs| Flight.create!(attrs) }
