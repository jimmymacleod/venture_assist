class AddBucketToBusinesses < ActiveRecord::Migration[5.1]
  def change
    add_column :businesses, :bucket_id, :integer
    add_index :businesses, :bucket_id
  end
end
