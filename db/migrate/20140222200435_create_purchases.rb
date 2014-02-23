class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :quote_id
      t.string :commodity
      t.string :supplier
      t.string :price
      t.string :brand
      t.string :pack_size
      t.string :volume
      t.string :shipment_details
      t.string :po_number

      t.timestamps
    end
  end
end
