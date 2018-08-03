require 'bundler'
require './models/model'
Bundler.require

class MyApp < Sinatra::Base
  get '/' do
    "All about RONKE"
  end
  
  get '/music' do
    "Ronke was singing out of the womb but got into instrumental music at 9.
    Instruments: alto sax, tenor sax, bassoon"
  end 
  
  get '/itslit' do 
    erb:index
  end 
  
  get '/hello/:drink' do
  @yourfavdrink = params[:drink]
  "What do you like about #{@yourfavdrink}?"
  end 
  
  get '/drinksurvey' do 
    erb:drinks
  end  
  
  post '/drinksurvey' do
    "Hey #{params[:name]}! I heard your favorite drink is #{params[:favdrink]}. Here's some *hands you #{params[:favdrink]}*"
  end  
  
end