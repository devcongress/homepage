class StartupsController < ApplicationController

  before_action :set_startup, only: [ :show, :edit, :update ]

  def index
    redirect_to root_path
    #@startups = Startup.all
  end

  def new
    redirect_to root_path
    #@startup = Startup.new
  end

  def create
    @startup = Startup.new startup_params
    if @startup.save
      redirect_to @startup, notice: "Awesome! Follow link in the notification email to update your profile"
    else
      flash.now[:alert] = 'Oops! Ahem, can you fill your data again? There was a problem with \'em'
      render 'new'
    end
  end

  #def edit
  #end

  #def show
  #end

  def update
    if @startup.password == update_startup_params[:password]
      @startup.update_attributes(update_startup_params)
      if @startup.save
        redirect_to @startup, notice: 'Changes successfully saved'
      else
        render 'edit'
      end
    else
      flash[:alert] = 'Password did not match'
      render 'edit'
    end
  end


  private
    def startup_params
      params.require(:startup).permit(
        :name,
        :email,
        :password
      )
    end

    def update_startup_params
      params.require(:startup).permit(
        :name,
        :email,
        :password,
        :ceo,
        :location,
        :founding_year,
        :website,
        :twitter,
        :email,
        :github,
        :product,
        :product_tagline,
        :product_description,
        :technologies,
        :ceo_bio,
        :facebook
      )
    end

    def set_startup
      @startup = Startup.find_by_id params[:id]
      if @startup.nil?
        redirect_to startups_url
      end
    end
end
