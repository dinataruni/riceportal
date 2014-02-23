class AddPurchaseToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :confirm, :boolean, :default => false
  end
end
