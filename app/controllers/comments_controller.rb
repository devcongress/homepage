class CommentsController < ApplicationController
	before_action :set_title, except: [ ]

	def index
	end

  def create
  	@comment = @title.comments.build comment_params
  	if @comment.save
  		# flash[:notice] = 'Comment added.'
  		redirect_to @title
  	else
  		# flash[:alert] = 'Oops! Your comment couldn\'t be saved.'
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
