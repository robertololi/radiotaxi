json.array!(@centrales) do |centrale|
  json.extract! centrale, :id, :id_central, :responsable, :direccion, :comuna, :telefono, :correo
  json.url centrale_url(centrale, format: :json)
end
