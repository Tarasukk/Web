class CoinsapiController < ApplicationController
  protect_from_forgery with: :null_session
  
  def index
    @coins = Coin.order("id")

    respond_to do |format|
      
      format.json { render json: @coins } # Повертаємо створений елемент у форматі JSON
    end
  end
end
