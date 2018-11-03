class Tax < ActiveRecord::Base
  belongs_to :company   #listar impuestos pos compañía
  #has_many :product  # un impuesto puede estar en muchos productos, no hace falta nunca se irá a producto a partir del impuesto.
  #has_many :client  # impuesto por defecto de algunos clientes (p.e. vip), no hace falta nunca se irá a cliente a partir del impuesto.
  #has_one :line  ,#listar lineas a partir del descuento, no se va a usar, no se hacen selects ni inners
  #has_many :deliverynotes #buscar alvaranes a partir de impuesto, no se usará nunca
  #has_many :orders #buscar pedidos a partir de impuesto, no se usará nunca
  #has_many :invoices #buscar factures a partir de impuesto, no se usará nunca
  #has_many :forecasts #buscar presupuestos a partir de impuesto no se usará nunca
end
