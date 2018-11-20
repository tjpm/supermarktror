class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :Artikelnummer
      t.string :Bezeichnung
      t.float :Preis
      t.float :EK
      t.integer :Bestand
      t.integer :Bestellt
      t.string :Marke
      t.string :Lieferant

      t.timestamps
    end
  end
end
