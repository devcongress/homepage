class StartupObserver < ActiveRecord::Observer
	def after_create(startup)
		StartupNotifier.registration_successful(startup).deliver
	end
end