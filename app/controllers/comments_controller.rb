class CommentsController < ApplicationController
  before_action :set_project

  def create
    @comment = @project.comments.create(comment_params)
    @comment.save

    respond_to do |format|
      format.turbo_stream do
        @comment.broadcast_render_to @project, :comments, partial: 'comments/create', locals: { project: @project, comment: @comment }
      end
      # format.html { redirect_to @project, notice: "Comment was successfully added." }
    end
  end



  private

  def set_project
    @project = Project.find(params.expect(:project_id))
  end

  def comment_params
    params.fetch(:comment, {}).permit(:message).merge(user: current_user)
  end
end
