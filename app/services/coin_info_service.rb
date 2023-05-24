class CoinInfoService
  BAZE_URL = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=50&page=1&sparkline=false&locale=en"
  CHART_URL = "https://api.coingecko.com/api/v3/coins/ethereum/market_chart?vs_currency=usd&days=7"
  
  def get_info
    call(BAZE_URL)
  end

  def get_chart
    call(CHART_URL)
  end

  private
  
  def call(url)
    response = Net::HTTP.get_response(uri(url))
    JSON.parse(response.body)
  end

  def uri(url)
    return @uri if defined?(@uri)
    @uri = URI(url)
    @uri
  end
end