class TitlesController < ApplicationController
	def index
		@titles = Title.all.order 'created_at DESC'
	end

	def new
		@title = Title.new
	end

	def create
		@title = Title.new title_params
		if @title.save
			flash[:notice] = 'Your title has been submitted for consideration. Thank you!'
			redirect_to titles_path
		else
			render 'new'
		end
	end

	def show
		@title = Title.find_by_id(params[:id])
	end


	private

		def title_params
			params.require(:title).permit(
				:title,
				:submitter_name,
				:submitter_email,
				:relevance,
				:difficulty_level
			)
		end
end
