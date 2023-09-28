# frozen_string_literal: true

class FollowingsController < ApplicationController
  def create
    current_user.followees << User.find(params[:followed_id])
    redirect_to request.referer || root_path
  end

  def destroy
    followed_id = params[:followed_id] || params[:id]
    user_to_unfollow = User.find_by(id: followed_id)

    current_user.followees.destroy(user_to_unfollow)
    redirect_to request.referer || root_path
  end
end
