class CommentsController < ApplicationController
  before_action :set_title

  def index
  end

  def create
    @comment = @title.comments.build comment_params
    if @comment.save
      redirect_to @title
    else
      render 'titles/show'
    end
  end

  private

    def set_title
      @title = Title.find params[:title_id]
    end

    def comment_params
      params.require(:comment).permit(
        :commenter_name,
        :commenter_website,
        :comment_body
      )
    end
end
