class CreateOrderpositions < ActiveRecord::Migration[5.1]
  def change
    create_table :orderpositions do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
