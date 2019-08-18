require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    @new = params[:name], params[:breed], params[:age]
    erb :index
  end 
  
  get '/new' do 
    erb :create_puppy 
  end 
  
  post '/puppy' do
    Puppy.new(name,breed,age)
    #erb :display_puppy
  end 
end
