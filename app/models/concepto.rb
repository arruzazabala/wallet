class Concepto < ActiveRecord::Base
  attr_accessible :descripcion, :es_egreso, :es_ingreso

  validates :descripcion, :presence => true,
                          :length => { :minimum => 3 }

  has_many :movimientos
end
