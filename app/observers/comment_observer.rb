class CommentObserver < ActiveRecord::Observer
	def after_create(comment)
		Notifier.comments_updated(comment).deliver
	end
end