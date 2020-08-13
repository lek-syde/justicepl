class RepliesController < ApplicationController


  def create

  @discussion =  Discussion.find(params[:post_id])
  @reply = @discussion.replies.create(params[:reply]).permit(:reply)

  redirect_to_discussion_path(@discussion)

  end

  def destroy
  end

end
