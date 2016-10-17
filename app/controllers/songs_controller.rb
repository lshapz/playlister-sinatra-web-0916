class SongsController < ApplicationController
  get '/songs' do
    @songs = Song.all 
    erb :'songs/index'
  end



  get '/songs/:slug' do 
    @song = Song.find_by_slug(params[:slug])
    erb :'songs/show'
  end 



  # get '/songs/:edit' do 
  #   @song = Song.find_by(id: params[:id])
  #   erb :'songs/edit'
  # end 


  # post '/songs/:id/edit' do 
  #   @song = Song.find_by(id: params[:id])
  #   redirect to '/songs/:id'  
  # end 


end