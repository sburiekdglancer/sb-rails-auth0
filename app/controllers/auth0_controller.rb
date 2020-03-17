class Auth0Controller < ApplicationController

  skip_before_action :verify_authenticity_token

  include Dashboard::SessionHelper

  def callback
    auth0_info = request.env['omniauth.auth']

    # p ">>> auth0_info:"
    # p auth0_info

    # Redirect to the URL you want after successful auth
    auth0_payload = {}
    auth0_payload["sub"] = auth0_info[:extra][:raw_info][:sub]
    user_params = {email: auth0_info[:info][:email]}
    form = Form::Dashboard::AuthLogin.new(auth0_payload, user_params)
    if form.submit
      sign_in(form.user)
      if form.user.registered?
        redirect_to dashboard_path
      else
        redirect_to dashboard_register_path
      end
    else
      @errors = form.errors
      redirect_to root_path
    end
  end

  def failure
    # show a failure page or redirect to an error page
    @error_msg = request.params['message']
  end
end