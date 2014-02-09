class FormsController < ApplicationController

def forgot_mail

  email = params[:email]
  ForgotMailer.invite_members(email).deliver

  redirect_to root_url

end

end
