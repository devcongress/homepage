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
end
