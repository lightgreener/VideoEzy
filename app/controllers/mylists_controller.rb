class MylistsController < ApplicationController
    before_action :check_for_login

  def new
      @mylist = Mylist.new
  end

  def create
      # redirect_to root_path unless @current_user.present?
      # create a mylist    能看懂下面的 代码， 是两种方法
      mylist = Mylist.create mylist_params
      @current_user.mylists << mylist
      #
      # @current_user.mylists.create mylist_params
      redirect_to new_mylist_path
  end

  private
  def mylist_params
      params.require(:mylist).permit(:title)
  end
end
