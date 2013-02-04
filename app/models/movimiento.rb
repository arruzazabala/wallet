class Movimiento < ActiveRecord::Base
  attr_accessible :anio, :mes, :monto
  belongs_to :concepto
end
