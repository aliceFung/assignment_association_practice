class PostsController < ApplicationController
  def new
    @tags = Tag.all
    @post = Post.new
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
