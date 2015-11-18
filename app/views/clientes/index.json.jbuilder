json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :id_cliente, :nombre, :apellido, :direccion, :telefono, :correo
  json.url cliente_url(cliente, format: :json)
end
