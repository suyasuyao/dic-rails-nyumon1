class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  # 追記する
  def new
    @blog = Blog.new
  end

  def create
    Blog.create(blog_params)

    # redirect_to "/blogs/new"
    redirect_to new_blog_path
  end

  # 定義する
  def show
    @blog = Blog.find(params[:id])
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
