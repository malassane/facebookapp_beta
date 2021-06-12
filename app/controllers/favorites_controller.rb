class FavoritesController < ApplicationController
    
    def create 
        favorite = current_user.favorites.create(picture_id: params[:picture_id])
        redirect_to pictures_path, notice: "#{favorite.picture.user.name}'S picture has been added to favorites"
    end

    def destroy 
        favorite = current_user.favorites.find_by(id: params[:id]).destroy
        redirect_to pictures_path, notice: "#{favorite.picture.user.name}'S picture has been removed from favorites"
    end 
end
