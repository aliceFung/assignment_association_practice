class PostsController < ApplicationController
  def new
    @tags = Tag.all
    @post = Post.new
    @users = User.all
    @comments = Comment.all
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end
end
