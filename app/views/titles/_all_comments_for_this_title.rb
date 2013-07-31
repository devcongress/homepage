<% if @title.comments.any? %>
	<div style="margin-left: 10px;" id="comments" class="comments-display">
		<% @title.comments.each do |comment| %>
			<div class="single-comment">
				<p>
					<% unless comment.commenter_website.blank? %>
						<%= link_to comment.commenter_name, comment.commenter_website %>
					<% else %>
						<%= comment.commenter_name %>
					<% end %> 
				</p>
				<p><%= comment.comment_body %></p>
			</div>
		<% end %>
	</div>
<% end %>
