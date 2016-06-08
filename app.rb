require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'anything'

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
