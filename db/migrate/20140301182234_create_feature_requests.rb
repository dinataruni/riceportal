class CreateFeatureRequests < ActiveRecord::Migration
  def change
    create_table :feature_requests do |t|
      t.text :request
      
      t.timestamps
    end
    add_reference :feature_requests, :user, index: true
  end
end
