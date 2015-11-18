class CreateCentrales < ActiveRecord::Migration
  def change
    create_table :centrales do |t|
      t.string :id_central
      t.string :responsable
      t.string :direccion
      t.string :comuna
      t.integer :telefono
      t.string :correo

      t.timestamps
    end
  end
end
