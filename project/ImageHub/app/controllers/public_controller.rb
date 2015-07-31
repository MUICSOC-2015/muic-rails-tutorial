class PublicController < ApplicationController
  def about
    @users = User.all
    @albums = Album.all
    @images = Image.all
  end

  def game
  end
end
