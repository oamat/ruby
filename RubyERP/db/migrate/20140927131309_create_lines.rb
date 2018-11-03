class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.integer :company_id
      t.integer :client_id
      t.integer :invoice_id
      t.integer :order_id
      t.integer :deliverynote_id
      t.integer :forecast_id
      t.string :name
      t.decimal :price
      t.decimal :quantity
      t.integer :discount_id
      t.decimal :discount
      t.integer :tax_id
      t.decimal :tax
      t.text :description
      t.decimal :total

      t.timestamps
    end
    #add_index :lines, :company_id, :unique => false #listar linias de la compañía ,comprovación posterior no hace falta indexar, no se hacen selects
    #add_index :lines, :client_id, :unique => false  #listar linias de un cliente, comprovación posterior no hace falta indexar, no se hacen selects
    add_index :lines, :invoice_id, :unique => false  #listar linias generadas a partir de una factura
    add_index :lines, :forecast_id, :unique => false #listar linias generadas a partir de un presupuesto
    add_index :lines, :order_id, :unique => false    #listar linias generadas a partir de un pedido
    add_index :lines, :deliverynote_id, :unique => false  #listar linias generadas a partir de un albaran
    #add_index :lines, :tax_id, :unique =>  false #listar lineas a partir del impuesto, no se va a usar
    #add_index :lines, :discount_id, :unique =>  false #listar lineas a partir del descuento, no se va a usar
  end
end
