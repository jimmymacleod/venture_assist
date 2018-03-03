class CreateJoinTableBusinessesArticles < ActiveRecord::Migration[5.1]
  def change
    create_join_table :businesses, :articles do |t|
      t.index [:business_id, :article_id]
      t.index [:article_id, :business_id]
    end
  end
end
