class CreateTaxes < ActiveRecord::Migration
  def change
    create_table :taxes do |t|
      t.decimal :tax
      t.string :description
      t.integer :company_id
      t.boolean :default

      t.timestamps
    end
    add_index :taxes, :company_id, :unique => false #listar impuestos globales de la compañía
  end
end
