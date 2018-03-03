class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :publisher
      t.string :link
      t.date :date
      t.string :image

      t.timestamps
    end
  end
end
