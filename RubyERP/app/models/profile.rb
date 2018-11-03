class Profile < ActiveRecord::Base
  belongs_to :company #listar profiles a partir de la compañía
  belongs_to :user #seleccionar el profile a partir del user_id
end
