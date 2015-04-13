class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def crozdesk
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: "Crozdesk") if is_navigational_format?
    else
      session["devise.crozdesk_data"] = request.env["omniauth.auth"]
      redirect_to root_path
    end
  end
end
