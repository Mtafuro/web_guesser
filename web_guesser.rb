require 'sinatra'
require 'sinatra/reloader'

rng = rand(100)

get '/' do
  "The SECRET NUMBER is #{rng}"
end
