class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :iban
      t.string :description
      t.string :account_holder
      t.integer :client_id
      t.integer :company_id
      t.boolean :default

      t.timestamps
    end
    #add_index :accounts, :company_id, :unique => false #listar cuentas de una compañia, comprovación posterior no hace falta indexar, no se hacen selects
    add_index :accounts, :client_id, :unique => false #listar cuentas de un cliente

  end
end
