class UsersController < ApplicationController
  def top
    @users = User.all
  end
  def new
  end
  def create
    @user = User.new(name:params[:name],email:params[:email])
    @user.save
    redirect_to("/user")
  end
  def show
    @user = User.find_by(id:params[:id])
    @posts = @user.posts
  end
  def edit
    @user = User.find_by(id:params[:id])
  end
  def update
    @user = User.find_by(id:params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.save
    redirect_to("/user")
  end
  def destroy
    @user = User.find_by(id:params[:id])
    @user.destroy
    redirect_to("/user")
  end
end
