class HomeController < ApplicationController
  def top
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new(name:params[:name],content:params[:content],user_id:params[:user_id])
    @post.save
    redirect_to("/")
  end

  def show
    @post= Post.find_by(id:params[:id])
  end

  def edit
    @post = Post.find_by(id:params[:id])
  end

  def update
    @post = Post.find_by(id:params[:id])
    @post.name =params[:name]
    @post.content=params[:content]
    @post.save
    redirect_to("/")
  end

  def destroy
    @post = Post.find_by(id:params[:id])
    @post.destroy
    redirect_to("/")

  end
end
