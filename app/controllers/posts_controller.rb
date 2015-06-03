class PostsController < ApplicationController

  def create
    # debugger
    @post = Post.new(post_params)
    @post.save
  end

  def index
    @posts = Post.all
    render json: @posts, status: 200

  end









  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
