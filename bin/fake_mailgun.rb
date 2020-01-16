#!/usr/bin/env ruby

require 'sinatra'

delay = ENV['FAKE_MAILGUN_DELAY'].to_i || 2

post "/v3/:domain/messages" do
  puts "mailgun from: #{params[:from]} to: #{params[:to]}, subject: #{params[:subject]}"
  puts "*** #{Time.now} sleeping for #{delay}"
  sleep delay
  puts "*** #{Time.now} sleeping done"
  status 201
end
