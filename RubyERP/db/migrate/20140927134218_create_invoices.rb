class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :company_id
      t.integer :client_id
      t.integer :address_id
      t.string :address
      t.integer :tax_id
      t.decimal :tax
      t.integer :discount_id
      t.decimal :discount
      t.integer :payment
      t.date :date
      t.text :observations
      t.date :expiration
      t.decimal :total
      t.integer :tariff_code
      t.string :gross_load
      t.string :net_load
      t.string :receiver
      t.string :sender
      t.integer :has_invoice
      t.integer :has_forecast
      t.integer :has_order
      t.integer :has_delivery
      t.integer :invoice_id
      t.integer :forecast_id
      t.integer :order_id
      t.integer :deliverynote_id

      t.timestamps
    end
    add_index :invoices, :company_id, :unique => false #listar facturas de la compañía
    add_index :invoices, :client_id, :unique => false  #listar facturas de un cliente
    add_index :invoices, :invoice_id, :unique => false  #listar facturas generadas a partir de una factura
    add_index :invoices, :forecast_id, :unique => false #listar facturas generadas a partir de un presupuesto
    add_index :invoices, :order_id, :unique => false    #listar facturas generadas a partir de un pedido
    add_index :invoices, :deliverynote_id, :unique => false  #listar facturas generadas a partir de un albaran
    #add_index :invoices, :address_id, :unique => false  #listar a partir de una dirección, nunca se usara
    #add_index :invoices, :tax_id, :unique =>  false #listar a partir del impuesto, no se va a usar
    #add_index :invoices, :discount_id, :unique =>  false #listar a partir del descuento, no se va a usar
  end
end
