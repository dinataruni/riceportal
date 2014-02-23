class AddUidToQuotes < ActiveRecord::Migration
  def change
    add_reference :quotes, :user,  index: true
    add_reference :rfqs, :user, index: true
    add_reference :purchases, :user, index: true
  end
end
