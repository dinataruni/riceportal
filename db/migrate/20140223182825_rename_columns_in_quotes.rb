class RenameColumnsInQuotes < ActiveRecord::Migration
  def change
  	rename_column :quotes, :notes, :shipment
	rename_column :purchases, :shipment_details, :shipment
	add_column :quotes, :volume, :string
	add_column :quotes, :pack_size, :string
  end
end
