module ApplicationHelper

	def title page_title
		base_title = "Developers Congress, #{Time.now.year}"
		if page_title.empty?
			base_title
		else
			"#{page_title} / #{base_title}"
		end
	end

end
