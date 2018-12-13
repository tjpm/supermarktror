class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.integer :Lieferantennummer
      t.string :Name
      t.string :Adresse
      t.integer :Telefonnummer
      t.string :Email

      t.timestamps
    end
  end
end
