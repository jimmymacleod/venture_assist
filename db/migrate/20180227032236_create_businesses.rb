class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :dropbox
      t.string :website
      t.string :logo

      t.timestamps
    end
  end
end
