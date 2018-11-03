class Discount < ActiveRecord::Base
  belongs_to :company #listar descuentos pos compañía
  # has_many :client # descuento por defecto de algunos clientes (p.e. vip), no hace falta nunca se irá a cliente a partir del descuento.
  #has_many :product  # un descuento puede estar en muchos productos, no hace falta nunca se irá a producto a partir del descuento.

  #has_one :line  ,#listar lineas a partir del descuento, no se va a usar, no se hacen selects ni inners
  #has_many :deliverynotes #buscar alvaranes a partir de descuento, no se usará nunca
  #has_many :orders #buscar pedidos a partir de descuento, no se usará nunca
  #has_many :invoices #buscar factures a partir de descuento, no se usará nunca
  #has_many :forecasts #buscar presupuestos a partir de descuento no se usará nunca


end
