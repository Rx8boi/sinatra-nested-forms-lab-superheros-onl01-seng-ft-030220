require 'sinatra/base'



class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :create
    end

    post '/team' do
        params["team"]["member"].each do |data|
          Member.new(data)
        end

        @team = Team.new(params[:team])

        @members = Member.all

        erb :team
      end
end
