class Product < ActiveRecord::Base
  belongs_to :company
  #belongs_to :discount  #un producto puede tener 1 descuento por defecto, no hace falta nunca se irá a producto a partir del impuesto.
  #belongs_to :tax #un producto puede tener 1 impuesto por defecto, , no hace falta nunca se irá a producto a partir del descuento.
end
