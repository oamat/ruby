class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :barcode
      t.string :description
      t.decimal :price
      t.string :lead_time
      t.integer :company_id
      t.integer :tax_id
      t.integer :discount_id
      t.integer :stock
      t.boolean :stock_active
      t.boolean :active

      t.timestamps
    end
    add_index :products, :company_id, :unique => false # listar productos de la compañía
    add_index :products, :barcode, :unique => false # buscar producto con barcode
    #add_index :products, :tax_id, :unique => false # listar productos con un impuesto, nunca se listaran por impuesto
    #add_index :products, :discount_id, :unique => false # listar productos con un descuento, nunca se listaran por descuento
  end
end
