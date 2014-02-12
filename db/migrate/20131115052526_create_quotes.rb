class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :price
      t.string :commodity
      t.string :supplier
      t.string :brand
      t.text :notes

      t.timestamps
    end
  end
end
