class AddRfqIdToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :rfq_id, :integer
  end
end
