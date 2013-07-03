class AttendeesController < ApplicationController
	def index
	end

	def new
		@attendee = Attendee.new
	end

	def create
		@attendee = Attendee.new attendee_params
		if @attendee.save
			flash[:notice] = 'Yay! You are definitely attending DevCongress :)'
			redirect_to agenda_path
		else
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
