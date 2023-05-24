data = CoinInfoService.new.get_info

for item in data 
    new_coin = Coin.create(
        symbol: item["symbol"],
        name: item["name"],
        image: item["image"],
        price: item["current_price"],
        change_24h_d: item["price_change_24h"],
        change_24h_p: item["price_change_percentage_24h"],
        coin_id: item["id"]
    )
end