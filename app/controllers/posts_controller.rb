class PostsController < ApplicationController
  def new
    @tags = Tag.all
    @post = Post.new
    @users = User.all
    # @post.child_comments.build
    @post.child_comments << Comment.new

  end

  def create
    @post = Post.new(params_list)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    @post.child_comments.build
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params_list)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

    def params_list
      params.require(:post).permit(:title, :body, :id,
        { :child_comments_attributes => [:body, :id, :_destroy] })
    end
end
