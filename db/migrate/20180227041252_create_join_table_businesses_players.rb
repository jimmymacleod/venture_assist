class CreateJoinTableBusinessesPlayers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :businesses, :players do |t|
      t.index [:business_id, :player_id]
      t.index [:player_id, :business_id]
    end
  end
end
