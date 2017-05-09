require 'sinatra'
require 'sinatra/reloader'

rng = rand(100)

get '/' do
  guess = params["guess"].to_i
    case
      when (guess - rng) > 5
        msg = "WAY too high!"
      when (guess - rng) < (-5)
        msg = "WAY too low"
      when guess > rng
        msg = "a bit too high!"
      when guess < rng
        msg = "a bit too low!"
      when guess == rng
        msg = "is DEAD ON. The secret number is #{rng}."
    end

  erb :index, :locals => {:rng => rng, :msg => msg, :guess => guess}

end
