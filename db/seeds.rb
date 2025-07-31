
airport_codes = [ "ATL", "DFW", "DEN", "ORD", "LAX" ]

airports = airport_codes.map { |code| Airport.create!(code: code) }


15.times do
  airports.permutation(2).each do |departure, arrival|
    Flight.create!(
      departure_airport: departure,
      arrival_airport: arrival,
      start_date: Date.current + rand(0..7),
      flight_duration: 10,
    )
  end
end
