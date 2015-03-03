class PostsController < ApplicationController
  
  def index
    render json: Post.all
  end

  def show
    render json: Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params.merge({author: current_user}))
    if @post.save
      redirect_to post_path(@post)
    else
      redirect_to new_post_path
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to post_path(@post)
    else
      redirect_to new_post_path
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end

  private

  def post_params
    json_params = ActionController::Parameters.new( JSON.parse(request.body.read) )
    json_params.require(:post).permit(:title, :content, :image)
  end

end
