class Company < ActiveRecord::Base
  has_one :image,  :dependent => :destroy  #ir a buscar la imagen de la compañía
  has_many :clients,  :dependent => :destroy #ir a buscar clientes de la compañía
  has_many :addresses,  :dependent => :destroy #ir a buscar direcciones de la compañía
  has_many :profiles,  :dependent => :destroy #ir a buscar perfiles de la compañía
  has_many :taxes,  :dependent => :destroy #ir a buscar impuestos de la compañía
  has_many :discounts, :dependent => :destroy #ir a buscar descuentos de la compañía
  has_many :products, :dependent => :destroy #ir a buscar productos de la compañía

  #has_many :contacts, :dependent => :destroy , comprovación posterior no hace falta indexar, no se hacen selects ni inners
  #has_many :accounts, :dependent => :destroy , comprovación posterior no hace falta indexar, no se hacen selects ni inners
  #has_many :invoices, :dependent => :destroy , comprovación posterior no hace falta indexar, no se hacen selects ni inners
  #has_many :orders, :dependent => :destroy , comprovación posterior no hace falta indexar, no se hacen selects ni inners
  #has_many :deliberynotes, :dependent => :destroy , comprovación posterior no hace falta indexar, no se hacen selects ni inners
  #has_many :forecast, :dependent => :destroy , comprovación posterior no hace falta indexar, no se hacen selects ni inners
  #has_many :lines, :dependent => :destroy , comprovación posterior no hace falta indexar, no se hacen selects ni inners
end
