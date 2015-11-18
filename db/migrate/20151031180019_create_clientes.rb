class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :id_cliente
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.integer :telefono
      t.string :correo

      t.timestamps
    end
  end
end
