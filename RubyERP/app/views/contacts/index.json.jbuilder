json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :cif, :position, :department, :telephone, :other_telefono, :mobile, :mail, :observations, :client_id, :default
  json.url contact_url(contact, format: :json)
end
