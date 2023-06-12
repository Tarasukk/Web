set :output, "log/cron.log"

every 30.minute do
  rake "coins_task:update_info"
  rake "investments_task:update_info"
end