class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :administrator
      t.string :cif
      t.string :telephone
      t.string :other_telephone
      t.string :mobile
      t.string :fax
      t.string :mail
      t.string :web
      t.text :observations

      t.timestamps
    end
  end
end
