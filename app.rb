require 'sinatra/base'
require 'shotgun'

class App < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb(:names)
  end

  run! if app_file == $0
end
