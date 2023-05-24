class CreateInvestments < ActiveRecord::Migration[7.0]
  def change
    create_table :investments do |t|
      t.integer :user_id
      t.string :coin_name
      t.float :shopping_price
      t.float :invest
      t.float :amount
      t.float :dollar_change
      t.float :percentage_change

      t.timestamps
    end
  end
end
