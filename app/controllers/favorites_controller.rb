class FavoritesController < ApplicationController
  def create
    @favorite = current_user.favorites.new(item_id: params[:item_id])
    @favorite.save
    redirect_to request.referrer
  end

  def destroy
    @item = Item.find(params[:item_id])
    @favorite = current_user.favorites.find_by(item_id: @item.id)
    @favorite.destroy
    redirect_to request.referrer
  end
end
