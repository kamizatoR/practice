class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)
    @like.save
    redirect_to root_path
  end

  def index
    @likes = Like.all
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :post_id)
  end

end
