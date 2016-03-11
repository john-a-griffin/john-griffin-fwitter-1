require './config/environment'
require './app/models/tweet'

class ApplicationController < Sinatra::Base
   
   configure do
  set :public_folder, 'public'
  set :views, 'app/views'
  
  get '/' do
        
        Tweet.new('chief-keef', "bang bang gang gang!")
        Tweet.new('John_Griffin', "I love money he he he.")
        
        @tweets = Tweet.all
        erb:index
        
        end
    
    end
    
end