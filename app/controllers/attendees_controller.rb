class AttendeesController < ApplicationController
	def index
	end

	def new
		@attendee = Attendee.new
	end

	def create
		@attendee = Attendee.new attendee_params
		if @attendee.save
			AttendeeNotifier.registration_successful(@attendee).deliver
			flash[:notice] = 'Please check your email for confirmation.'
			redirect_to agenda_path
		else
			# flash[:alert] = 'Ouch, your registration failed. Let\'s give it another shot'
			render 'new'
			# nothing, yet
		end
	end


	private

		def attendee_params
			params.require(:attendee).permit(
				:name,
				:email,
				:website,
				:github,
				:linkedin,
				:twitter,
				:interests,
				:specialty,
				:expectation
			)
		end

end
