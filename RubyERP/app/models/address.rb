class Address < ActiveRecord::Base
  belongs_to :company # listar direcciones de la compañia
  belongs_to :client # listar direcciones de un cliente
  belongs_to :contact # listar direcciones de un contacto
  #has_many :deliverynotes #buscar alvaranes a partir de la dirección, no se usará nunca
  #has_many :orders #buscar pedidos a partir de la dirección, no se usará nunca
  #has_many :invoices #buscar factures a partir de la dirección, no se usará nunca
  #has_many :forecasts #buscar presupuestos a partir de la dirección no se usará nunca
end
