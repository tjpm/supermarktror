class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :Bestellnummer
      t.string :Bezeichnung

      t.timestamps
    end
  end
end
