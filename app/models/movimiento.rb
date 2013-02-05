class Movimiento < ActiveRecord::Base
  attr_accessible :anio, :mes, :monto, :concepto_id
  belongs_to :concepto

  validates :anio, :length => { :is => 4 }
  validates :mes, :length => { :is => 2 }
  validates :monto, :presence => true,
                    :numericality => true

end
