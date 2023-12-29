class BlogsController < ApplicationController
 
  def index
   @blogs = Blog.all
   @comments = Comment.where(admin: true,super_admin: true)
  end
  def new
   @blog = Blog.new
  end
  def create 
  
   @blog = Blog.new(blog_params)
   if @blog.save
      redirect_to blogs_path
   else
    render :new
   end
  end 

 private
  def blog_params
    params.require(:blog).permit(:title, :content, :author_id)
  end
end
