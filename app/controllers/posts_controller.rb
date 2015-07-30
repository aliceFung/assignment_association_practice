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
  end

  def update
  end

  def show
    @post = Post.find(params[:id])
  end

  private

    def params_list
      params.require(:post).permit(:title, :body,
        { :child_comments_attributes => :body })
    end
end
