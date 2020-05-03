require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :create
    end

    post '/teams' do
        params[:team][:members].each do |member_data|
          Member.new(member_data)
        end

        @team = Team.new(params[:team])

        @members = Member.all

        erb :team
end
