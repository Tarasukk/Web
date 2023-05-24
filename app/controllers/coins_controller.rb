class CoinsController < ApplicationController
  helper_method :sort_column, :sort_direction 
    def index
      @data = Coin.order(sort_column + ' ' + sort_direction)
      @investment = Investment.new
      @investments = Investment.all
    end

    def show
      @coin = Coin.find(params[:id])
      @investment = Investment.new
      # data = CoinInfoService.new.get_chart
      # @chart_data = data['prices'].map { |price| [Time.at(price[0] / 1000).to_date, price[1].round(2)] }

    end
    private

    def sort_column
      Coin.column_names.include?(params[:sort]) ? params[:sort] : "price"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
    end

    
end
