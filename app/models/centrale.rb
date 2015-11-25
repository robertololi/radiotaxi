class Centrale < ActiveRecord::Base
  validates :id_central, presence: true
  validates :responsable, presence: true
end
