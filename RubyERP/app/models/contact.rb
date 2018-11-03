class Contact < ActiveRecord::Base
  belongs_to :client #listar contactos de un cliente
  has_many :addresses #ir a buscar direcciones de un contacto
end
