class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
      if @post.save
        flash[:notice] = "Post was successfully created!"
        redirect_to @post
      else
        render :new
      end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
      if @post.update(post_params)
        flash[:notice] = "Post was successfully updated!"
        redirect_to @post
      elsif params[:like]
        @post.likes=@post.likes+1
      else
        render :edit
      end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
      flash[:notice] = "Post was successfully deleted!"
      redirect_to posts_path
  end


  private

  def post_params
    params.require(:post).permit(:status, :user, :likes)
  end



end
