require 'sinatra'
require 'sinatra/reloader'

rng = rand(100)

get '/' do
  erb :index, :locals => {:rng => rng}
end
