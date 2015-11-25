class Cliente < ActiveRecord::Base
  has_many :cliente_vehiculo
  has_many :vehiculo, :through => :cliente_vehiculo

  validates :id_cliente, presence: true
  validates :nombre, presence: true
end
