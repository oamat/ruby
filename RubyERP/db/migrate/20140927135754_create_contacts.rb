class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :company_id
      t.integer :client_id
      t.string :name
      t.string :cif
      t.string :position
      t.string :department
      t.string :telephone
      t.string :other_telefono
      t.string :mobile
      t.string :mail
      t.text :observations
      t.boolean :default

      t.timestamps
    end
    #add_index :contacts, :company_id, :unique => false #listar contactos de la compañía,  comprovación posterior no hace falta indexar, no se hacen selects
    add_index :contacts, :client_id, :unique => false

end
end
