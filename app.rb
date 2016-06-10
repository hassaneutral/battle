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
    player1 = Player.new(params[:player_one_name])
    player2 = Player.new(params[:player_two_name])
    @game = Game.create(player1,player2)
    redirect('/play')
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    @game.attack(@game.opponent)
    if @game.game_over?
      redirect '/game_over'
    else
      erb(:attack)
    end
  end

  post '/switch' do
    @game.switch_player
    redirect('/play')
  end

  get '/game_over' do
    erb(:game_over)
  end

  run! if app_file == $0
end
