require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :create
    end

    post '/teams' do
        params[:pirate][:ships].each do |ship_data|
          Ship.new(ship_data)
        end

        @pirate = Pirate.new(params[:pirate])

        @ships = Ship.all

        erb :team
end
