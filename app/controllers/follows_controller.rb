class FollowsController < ApplicationController

  def create
    @follows = Follow.new(follow_params)
    @follows.save

    redirect_to root_path
  end


  def destroy
  end

  private

  def follow_params
    params.require(:follow).permit(:follower_id, :followed_id)

  end
end
