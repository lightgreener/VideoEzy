class SessionController < ApplicationController
  def new
  end

  def create
      # params[:email]
      # params[:password]
      user = User.find_by :email => params[:email]
      # find a user
      # if exists and the bcrypt(params[:password]) == password_digest
      if user.present? && user.authenticate(params[:password])
      # save the user in the session
      session[:user_id] = user.id
      redirect_to root_path
      #
      else
          flash[:error] = "Invalid username or password"
          redirect_to login_path #display error message
      end
  end

    def destroy
        session[:user_id] = nil
        redirect_to login_path
    end
end
