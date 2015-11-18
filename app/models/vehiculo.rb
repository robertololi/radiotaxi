class Vehiculo < ActiveRecord::Base
  has_many :cliente_vehiculo
  has_many :cliente, :through => :cliente_vehiculo
end
