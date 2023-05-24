class CreateCoins < ActiveRecord::Migration[7.0]
  def change
    create_table :coins do |t|
      t.string :symbol
      t.string :name
      t.string :image
      t.float :current_price
      t.float :price_change_24h
      t.float :price_change_percentage_24h

      t.timestamps
    end
  end
end
