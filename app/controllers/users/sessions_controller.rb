class Users::SessionsController < Devise::SessionsController
before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def sign_in(user,user_details)

  end

  def login
    if current_user.present? && current_user.role == 'user'
      redirect_to '/'
    elsif current_user.present? || current_user.role == 'admin' || current_user.role == 0
      redirect_to '/user/new'
    else
      @user = User.new
    end
  end

  # POST /resource/sign_in
  # def create

  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
end
