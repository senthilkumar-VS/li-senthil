class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  

  def current_firm_user
  #   if user_signed_in? && current_user.role == "professional"
  #     @current_firm_user ||= FirmUser.find_by("firm_id = ? AND user_id = ?", current_firm.id, current_user.id) if current_firm.present? && current_user.firm_users.present?
  #   end
  		@current_firm_user =User.first
  end

end
