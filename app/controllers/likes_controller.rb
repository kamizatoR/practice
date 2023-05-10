class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)


    @notification = Notification.new(
      post_id: @like.post_id,
      visited_id: @like.user_id,
      action: 'like'
    )
    @like.save
    @notification.save

    redirect_to post_path(params[:post_id])
  end

  def index
    @likes = Like.all
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :post_id)
  end

end
