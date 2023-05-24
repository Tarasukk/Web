class FixColumnsNames < ActiveRecord::Migration[7.0]
  def change
    change_table :coins do |t|
      t.rename :current_price, :price
      t.rename :price_change_24h, :change_24h_d
      t.rename :price_change_percentage_24h, :change_24h_p
    end
  end
end
