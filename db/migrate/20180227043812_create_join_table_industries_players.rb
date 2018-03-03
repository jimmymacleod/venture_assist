class CreateJoinTableIndustriesPlayers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :industries, :players do |t|
      t.index [:industry_id, :player_id]
      t.index [:player_id, :industry_id]
    end
  end
end
