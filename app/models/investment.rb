class Investment < ApplicationRecord
  before_save :set_price, :set_amount
  validates :invest, presence: true
  private

  def set_price
    if shopping_price.nil? 
      self.shopping_price = Coin.find_by_name(coin_name).price
    end
  end
  def set_amount
    self.amount = invest / shopping_price
    
  end

  # def set_dollar_change
  #   self.dollar_change = 0
  # end

  
end
