class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :company_id
      t.integer :user_id, :null => false
      t.string :name
      t.string :telephone
      t.string :position
      t.string :department
      t.date :birthday
      t.integer :sex
      t.integer :role
      t.boolean :active
      t.integer :language

      t.timestamps
    end
    add_index :profiles, :user_id, :unique => true #Cada vez que se entre por user_id, se debe recuperar la company_id
    add_index :profiles, :company_id, :unique => false  # listar todos los usuarios de la empresa
  end
end
