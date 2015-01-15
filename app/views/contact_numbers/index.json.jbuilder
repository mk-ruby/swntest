json.array!(@contact_numbers) do |contact_number|
  json.extract! contact_number, :id, :phone_number, :type, :person_id
  json.url contact_number_url(contact_number, format: :json)
end
