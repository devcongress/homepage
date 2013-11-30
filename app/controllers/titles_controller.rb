class TitlesController < ApplicationController

  before_action :set_title, only: [ :show ]

  def index
    @titles = Title.all
  end

  def new
    # @title = Title.new
    redirect_to titles_path
  end

  def create
    @title = Title.new title_params
    if @title.save
      TitleNotifier.submission_successful(@title).deliver
      flash[:success] = 'Your title has been submitted for consideration. Thank you!'
      redirect_to titles_path
    else
      render 'new'
    end
  end

  def show
    @comment = @title.comments.build
  end


  private

    def set_title
      @title = Title.find_by_id params[:id]
      if @title.nil?
        # flash[:alert] = 'No, no such title.'
        redirect_to titles_path
      end
    end

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
