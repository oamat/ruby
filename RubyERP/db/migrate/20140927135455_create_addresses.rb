class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :direction
      t.string :postal_code
      t.string :city
      t.string :province
      t.string :country
      t.string :post_office
      t.integer :type
      t.text :description
      t.integer :client_id
      t.boolean :default_client
      t.integer :company_id
      t.boolean :default_company
      t.integer :contact_id

      t.timestamps
    end
    add_index :addresses, :company_id, :unique => false  #listar direcciones de la compañía
    add_index :addresses, :client_id, :unique => false  #listar direcciones de un cliente
    add_index :addresses, :contact_id, :unique => false  #listar direcciones de un contacto
  end
end
