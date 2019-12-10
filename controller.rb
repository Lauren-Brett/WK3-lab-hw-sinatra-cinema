require 'sinatra'
require 'sinatra/contrib/all'
require 'pry'

require_relative('models/film')
also_reload('models/*')



get '/index' do
  @film_list = Film.all()
  erb(:index)
end

# get '/film_info' do
#   erb(:f)
# end


get '/index/:id' do
  @film_title = Film.find_by_id( params[:id])
  @film_price = Film.find_price( params[:id])
  erb(:film_info)
end


# get '/film_info' do
#   erb(:film_info)
# end
