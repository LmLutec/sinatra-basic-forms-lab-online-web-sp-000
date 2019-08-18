require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    @user_input = params[:name], params[:breed], params[:age]
    erb :index
  end 
  
  get '/new' do 
    erb :create_puppy 
  end 
  
  post '/puppy' do
    @new = Puppy.new(params[:name], params[:breed],params[:age])
    erb :display_puppy
  end 
end
