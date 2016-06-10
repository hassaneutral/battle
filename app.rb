require 'sinatra/base'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $game = Game.new(Player.new(params[:player_one_name]), Player.new(params[:player_two_name]))
    redirect('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/attack' do
    @game = $game
    @game.attack(@game.opponent)
    if @game.game_over?
      redirect '/game_over'
    else
      erb(:attack)
    end
  end

  post '/switch' do
    @game = $game
    @game.switch_player
    redirect('/play')
  end

  get '/game_over' do
    @game = $game
    erb(:game_over)
  end

  run! if app_file == $0
end
