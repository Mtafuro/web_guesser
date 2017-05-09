require 'sinatra'
require 'sinatra/reloader'

rng = rand(100)

get '/' do
  guess = params["guess"].to_i
    case
      when (guess - rng) > 5
        msg = "WAY too high!"
        css = "background: red;"
        # RED
      when (guess - rng) < (-5)
        msg = "WAY too low"
        css = "background: red;"
        # RED
      when guess > rng
        msg = "a bit too high!"
        css = "background: pink;"
        # PINK
      when guess < rng
        msg = "a bit too low!"
        css = "background: pink;"
        # PINK
      when guess == rng
        msg = "is DEAD ON. The secret number is #{rng}."
        css = "background: green;"
        # GREEN
    end

  erb :index, :locals => {:rng => rng, :msg => msg, :guess => guess, :css => css}

end
