class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      redirect_to "/", notice: "Good work, you\'re a member"
    else
      flash.now[:notice] = 'Invalid email/password'
      render "users/new"
    end
  end
end