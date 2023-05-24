class AddCoinsIdToCoin < ActiveRecord::Migration[7.0]
  def change
    add_column :coins, :coin_id, :string
  end
end
