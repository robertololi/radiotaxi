class CreateVehiculos < ActiveRecord::Migration
  def change
    create_table :vehiculos do |t|
      t.string :id_vehiculo
      t.string :conductor
      t.string :apellido
      t.string :marca
      t.string :modelo
      t.string :id_central
      t.integer :telefono

      t.timestamps
    end
  end
end
