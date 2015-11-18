json.array!(@vehiculos) do |vehiculo|
  json.extract! vehiculo, :id, :id_vehiculo, :conductor, :apellido, :marca, :modelo, :id_central, :telefono
  json.url vehiculo_url(vehiculo, format: :json)
end
