class UsersController < ApplicationController
    before_action :check_for_admin, :only => [:index]

    def index
        @user = User.all
    end


  def new
      @user = User.new    # UsersHelper give a templete
  end

#  fat model
#  thin controller

  def create
      # create users
      #  redirect
      #  set a user object
      @user = User.new user_params
      # if the user can be saved in the database
      if @user.save
      # redirect homepage
      session[:user_id] = @user.id
        redirect_to root_path
      # else
       else
      # render the new form again
        render :new
       end
      end

       private
       def user_params
            params.require(:user).permit(:email, :password, :password_confirmation)
       end

end
