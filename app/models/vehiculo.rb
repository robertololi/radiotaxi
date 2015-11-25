class Vehiculo < ActiveRecord::Base
  has_many :cliente_vehiculo
  has_many :cliente, :through => :cliente_vehiculo

  validates :id_vehiculo, presence: true
  validates :conductor, presence: true
end
