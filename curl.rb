#!/usr/bin/env ruby
#
require 'open-uri'

url = ["http://127.0.0.1:10080", "http://127.0.0.1:10081"]

loop do
  sleep 0.1
  t = open(url.sample){ |f| f.read }.scan(/web./).first
  puts "#{t} - #{Time.now.to_f}"
end
