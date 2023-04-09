class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @project = Project.find(params[:comment][:project_id])
    @comment = @project.comments.create(comment_params.merge(user_id: current_user.id))
    redirect_to @project
  end

  def destroy
    @comment = Comment.find(params[:id])
    @project = @comment.project
    @comment.destroy

    redirect_to @project
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :project_id)
    end
end
