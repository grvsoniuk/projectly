class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @job = Job.find(params[:comment][:job_id])
    @comment = @job.comments.create(comment_params.merge(user_id: current_user.id))
    redirect_to @job
  end

  def destroy
    @comment = Comment.find(params[:id])
    @job = @comment.job
    @comment.destroy

    redirect_to @job
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :job_id)
    end
end
