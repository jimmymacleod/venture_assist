class CreateJoinTableArticlesPlayers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :articles, :players do |t|
      t.index [:article_id, :player_id]
      t.index [:player_id, :article_id]
    end
  end
end
