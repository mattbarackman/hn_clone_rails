module SessionsHelper

  def sign_in(user)
    session[:user_id] = user.id
    current_user
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    p "hellllloooooooooooooooo"
    p session.delete(:user_id)
  end
end
 
