require "slack-notify"
require 'clockwork'
require 'active_support/time'
require 'dotenv'
Dotenv.load ".env"


sample = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK'], channel: "dive-into-codeの課題")
sample.notify("Hello There!")



