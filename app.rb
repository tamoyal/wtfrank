require 'sinatra'
require 'koala'

Koala::Utils.level = Logger::DEBUG

get '/wtfrank' do
  graph = Koala::Facebook::API.new("")
  graph.get_connections("me", "events")
end
