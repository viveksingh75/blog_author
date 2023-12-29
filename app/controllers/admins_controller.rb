class AdminsController < ApplicationController
  
 def index  
  @author_admin = Author.where(role:"admin")
  @author_user = Author.where(role:"user")
  @comments = Comment.where(admin: nil)
 
  end
  def edit 
    @author= Author.find(params[:id])
  end
  def update 
    @author= Author.find(params[:id])
    if  @author.update(author_params)
    redirect_to @admins
    else
      render :edit
    end
  end 



  private
  def author_params
    params.require(:author).permit(:blocked) # Add other attributes as needed
  end
  def comment_params
    params.require(:comment).permit(:admin)
  end

end
