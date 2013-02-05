class Movimiento < ActiveRecord::Base
  attr_accessible :anio, :mes, :monto, :concepto_id
  belongs_to :concepto

end
