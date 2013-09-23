class PagesController < ApplicationController
  def index
  end

  def agenda
  end
	
	def reg
		redirect_to register_path
	end

  def speakers
  end

  def about
  end

  def requirements
  end

	def say_thanks
		Notifier.thank_you
		render text: 'Ok, I\'m done saying thanks :/'
	end

  def hack
    @hacker = Hacker.new
  end

  def mission
    # redirects to the Github gist
    redirect_to 'https://github.com/devcongress/hckthn/blob/master/mpowerpayments-api-hackathon-pre-challenge.md'
  end

end
