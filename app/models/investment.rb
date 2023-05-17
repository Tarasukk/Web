class Investment < ApplicationRecord
  before_save :set_amount
  validates :invest, presence: true
  private

  def set_amount
    self.amount = invest / shopping_price
  end

  # def set_dollar_change
  #   self.dollar_change = 0
  # end

  
end
