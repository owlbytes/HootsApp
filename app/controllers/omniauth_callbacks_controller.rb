class OmniauthCallbacksController < Devise::OmniauthCallbacksController



  def google_oauth2
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted? 
      flash.notice = "Signed in through google"
      sign_in_and_redirect user
    else
      session["devise.user_attributes"] = user.attributes
      flash.notice = "Problem creating account"
      redirect_to new_user_registration_url
    end
  end 

  # each strategy needs its own method with the same name

end


# class OmniauthCallbacksController <Devise::OmniauthCallbacksController
#   def google_oauth2(auth, sign_in_resource=nil)
#     user = User.from_omniauth(request.env["omniauth.auth"])
#     if user.persisted?
#       flash.notice = "Signed in through Google!"
#       sign_in_and_redirect user
#     else
#       session["devise.user_attributes"] = user.attributes 
#       flash.notice = "Problem creating account"
#       redirect_to new_user_registration_url
#     end
#   end
# end 