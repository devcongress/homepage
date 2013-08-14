class StartupsController < ApplicationController

	before_action :set_startup, only: [ :show, :edit ]

  def index
  	@startups = Startup.all
  end

  def new
  	@startup = Startup.new
  end

  def create
  	@startup = Startup.new startup_params
  	if @startup.save
  		redirect_to @startup
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def show
  end


  private
	  def startup_params
	  	params.require(:startup).permit(
	  		:name,
	  		:email,
	  		:password
	  	)
	  end

	  def set_startup
	  	@startup = Startup.find_by_id params[:d]
	  	if @startup.nil?
	  		redirect_to startups_url
	  	end
	  end
end
