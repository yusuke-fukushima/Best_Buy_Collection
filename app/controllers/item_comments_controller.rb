class ItemCommentsController < ApplicationController
  def new
    @itemcomment = ItemComment.new
  end

  def create
    @item = Item.find(params[:item_id])
    @itemcomment = @item.item_comments.build(comment_params)
    if @itemcomment.save
      redirect_to items_path
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:item_comment).permit(:comment, :user_id)
  end
end