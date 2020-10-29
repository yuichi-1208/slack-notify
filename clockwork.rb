require "slack-notify"
require 'clockwork'
require 'active_support/time'
require 'dotenv'
Dotenv.load ".env"

# drinks = ["コーラ","オレンジジュース","レッドブル", "水", "アクエリアス", "ポカリスエット", "麦茶", "味噌汁"]
# drinks.each do |drink|
#   sample.notify("#{drink}")
# end
module Clockwork
  every(3.minutes, 'test') do
  # every(5.seconds, 'test') do
  sample = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK'], channel: "clockwork")
  sample.notify("3分毎に通知します!")
  # sample.notify("Hello")
  end
end