class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.integer :id_contrato
      t.string :id_cliente
      t.string :id_vehiculo
      t.string :id_central
      t.string :direccion
      t.string :destino
      t.string :valor

      t.timestamps
    end
  end
end
