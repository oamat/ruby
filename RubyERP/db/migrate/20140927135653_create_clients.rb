class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :company_id
      t.string :name
      t.string :alias
      t.string :cif
      t.string :telephone
      t.string :other_telefono
      t.string :mobile
      t.string :fax
      t.string :mail
      t.string :web
      t.text :observations
      t.string :incoterm
      t.string :incoterm_location
      t.integer :method_of_payment
      t.integer :payment_period
      t.integer :documents_language
      t.integer :client_type
      t.integer :currency
      t.integer :tax_id
      t.integer :discount_id

      t.timestamps
    end
    add_index :clients, :company_id, :unique => false # listar clientes de la compañía
    add_index :clients, :cif
    add_index :clients, :client_type
    add_index :clients, :name
    add_index :clients, :alias
    add_index :clients, :telephone
    add_index :clients, :mobile
    #add_index :clients, :tax_id, :unique => false # listar clientes por descuento, nunca se va a realizar
    #add_index :clients, :discuont_id, :unique => false # listar clientes por impuesto, nunca se va a realizar
    end
end
