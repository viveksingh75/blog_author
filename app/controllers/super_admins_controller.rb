class SuperAdminsController < ApplicationController
def index
    @comments = Comment.where(super_admin: nil)
end
def edit 
    @comment = Comment.find(params[:id])
   end
   def update
       @comment = Comment.find(params[:id])
      if @comment.update(comment_attrebutes_params)
       redirect_to super_admins_path
      else
       render :edit
      end
   end
   private 
   def comment_attrebutes_params
       params.require(:comment).permit(:super_admin)
   end

end
