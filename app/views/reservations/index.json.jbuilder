json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :space_id, :user_id, :reservation_date
  json.url reservation_url(reservation, format: :json)
end
