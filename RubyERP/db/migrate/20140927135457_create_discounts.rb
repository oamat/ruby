class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.decimal :discount
      t.string :description
      t.integer :company_id
      t.boolean :default

      t.timestamps
    end
    add_index :discounts, :company_id, :unique => false #listar descuentos globales de la compañía
  end
end
