require 'sinatra'

configure do
  set :port, 9002
end

get '/' do
  'hi'
end