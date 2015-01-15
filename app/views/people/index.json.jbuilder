json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :last_name, :middle_name, :ntid
  json.url person_url(person, format: :json)
end
