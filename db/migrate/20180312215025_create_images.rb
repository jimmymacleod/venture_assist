class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :file_id
      t.boolean :logo
      t.references :item, polymorphic: true, index: true
      t.timestamps
    end
  end
end
