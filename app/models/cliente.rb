class Cliente < ActiveRecord::Base
  has_many :cliente_vehiculo
  has_many :vehiculo, :through => :cliente_vehiculo
end
