class Forecast < ActiveRecord::Base
  #belongs_to :company ,comprovación posterior no hace falta indexar, no se hacen selects ni inners
  belongs_to :client #listar presupuestos de un cliente

  has_many :invoices # a partir del id
  has_many :orders   #   "
  has_many :deliverynotes #  "
  belongs_to :invoice  # a partir del invoice_id
  belongs_to :order    #   "
  belongs_to :deliverynote #   ""

  has_many :lines
  #belongs_to :addresses  #listar a partir de una dirección, nunca se usara
  #belongs_to :taxes #listar a partir del impuesto, no se va a usar
  #belongs_to :discounts #listar a partir del descuento, no se va a usar
end
