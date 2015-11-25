class Contrato < ActiveRecord::Base
  validates :id_contrato, presence: true
  validates :direccion, presence: true
end
