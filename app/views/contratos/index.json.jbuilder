json.array!(@contratos) do |contrato|
  json.extract! contrato, :id, :id_contrato, :id_cliente, :id_vehiculo, :id_central, :direccion, :destino, :valor
  json.url contrato_url(contrato, format: :json)
end
