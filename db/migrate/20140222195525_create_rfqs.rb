class CreateRfqs < ActiveRecord::Migration
  def change
    create_table :rfqs do |t|
      t.string :commodity
      t.string :brand
      t.string :pack_size
      t.string :volume
      t.text :shipment

      t.timestamps
    end
  end
end
