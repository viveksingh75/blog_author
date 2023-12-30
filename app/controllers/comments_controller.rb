class CommentsController < ApplicationController
    def new 
        @comment = Comment.new
    end
    def create
        @comment = Comment.new(comment_params)
        @comment.commentable_type = "Author"
        if @comment.save
            CommentUpdateJob.set(wait: 1.minute).perform_later(@comment)
            redirect_to comments_path,notice: 'Comment submitted successfully.'
        else 
            render :new
        end
    end
    def edit 
     @comment = Comment.find(params[:id])
    end
    def update
        @comment = Comment.find(params[:id])
       if @comment.update(comment_attrebutes_params)
        redirect_to admins_path, notice:'Comment updated successfully'
       else
        render :edit
       end
    end
    private 
    def comment_attrebutes_params
        params.require(:comment).permit(:admin)
    end

    def comment_params
        params.require(:comment).permit(:content,:commentable_id)
    end
end
