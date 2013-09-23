class HackersController < ApplicationController
  def create
  	hacker = Hacker.new hacker_params
  	if hacker.save
  		Notifier.hacker_registered(hacker).deliver
  		redirect_to mission_path,
  			notice: 'We have sent you an email. Please follow instructions in the mail \
  							 to complete your registration. Thank you and see you there!'
  	else
  		redirect_to hack_path, alert: 'Oops! Something bad happened'
  	end
  end

  private
  	def hacker_params
  		params.require(:hacker).permit(
  			:name,
  			:github,
  			:twitter,
  			:email,
  			:language
  		)	
  	end
end
