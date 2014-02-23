class AddStatusToRfqs < ActiveRecord::Migration
  def change
    add_column :rfqs, :status, :boolean
  end
end
