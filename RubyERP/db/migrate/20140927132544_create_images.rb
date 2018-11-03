class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :company_id
      t.attachment :image

      t.timestamps
    end
    add_index :images, :company_id, :unique => false #seleccionar la imagen de la empresa
  end
end
