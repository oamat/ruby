class Line < ActiveRecord::Base
  #belongs_to :company  ,comprovación posterior no hace falta indexar, no se hacen selects ni inners
  #belongs_to :client ,comprovación posterior no hace falta indexar, no se hacen selects ni inners

  belongs_to :invoice # listar lineas de una factura
  belongs_to :order  # listar lineas de un pedido
  belongs_to :forecast # listar lineas de un presupuesto
  belongs_to :deliverynote # listar lineas de un albaran

  #belongs_to :dicount  ,#listar lineas a partir del descuento, no se va a usar, no se hacen selects ni inners
  #belongs_to :tax ,#listar lineas a partir del descuento, no se va a usar, no se hacen selects ni inners

end
