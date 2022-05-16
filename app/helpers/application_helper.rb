module ApplicationHelper

	def hidden_header_footer
    params[:controller] == "devise/sessions" or "devise/registrations" and params[:action] == "new"
	end

	def user_image
		@user.profile.picture.present? ? @user.profile.picture : "https://picsum.photos/200/300"
	end

	def valid_user?
    (current_user.id == @user.profile.user_id) rescue false
  end
end