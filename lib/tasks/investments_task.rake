namespace :investments_task do

  desc 'to do'

  task update_info: :environment do
    investments = Investment.all
    investments.each do |item|
      curr_price = Coin.find_by_name(item.coin_name).price
      percent = percent_change(item.shopping_price,curr_price)
      profit = add_percent(item.invest,percent)
      invest = Investment.find_by_id(item.id).update(
        dollar_change: profit - item.invest,
        percentage_change: percent_change(item.invest,profit), 
        updated_at: Time.now.strftime("%d/%m/%Y %H:%M")
      )

    end
  end

  def percent_change(start_number, end_number)
    percent_change = ((end_number - start_number).to_f / start_number) * 100
  end

  def add_percent(number, percent)
    return number * (1 + percent/100.0)
  end

end