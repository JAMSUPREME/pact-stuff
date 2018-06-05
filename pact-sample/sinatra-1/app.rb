require 'sinatra'
require 'typhoeus'
require_relative 'remote_client'

configure do
  set :port, 9001
end

get '/' do
  'hello'
end

get '/remote-hello' do
  RemoteClient.get_hello
end