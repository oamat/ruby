class Client < ActiveRecord::Base
  belongs_to :company #pertenece a 1 empresa
  #belongs_to :discounts #1 descuento por defecto, no hace falta nunca se irá a cliente a partir del descuento.
  #belongs_to :taxes #1 impuesto por defecto, no hace falta nunca se irá a cliente a partir del impuesto.
  has_many :addresses,  :dependent => :destroy #direcciones (entrega, envío, facturación)
  has_many :accounts,  :dependent => :destroy #cuentas bancarias
  has_many :invoices,  :dependent => :destroy #facturas
  has_many :forecasts,  :dependent => :destroy #presupuestos
  has_many :orders,  :dependent => :destroy #pedidos
  has_many :deliverynotes,  :dependent => :destroy #albaranes - notas de entrega
end
