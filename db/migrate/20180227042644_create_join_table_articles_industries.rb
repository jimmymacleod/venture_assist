class CreateJoinTableArticlesIndustries < ActiveRecord::Migration[5.1]
  def change
    create_join_table :articles, :industries do |t|
      t.index [:article_id, :industry_id]
      t.index [:industry_id, :article_id]
    end
  end
end
