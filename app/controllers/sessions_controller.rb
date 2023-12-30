class SessionsController < ApplicationController
    
    def create
        @author = Author.find_by_email(params[:email])
        if @author && @author.authenticate(params[:password])
          session[:author_id] = @author.id
          redirect_to blogs_path,notice: 'user login successful'
          else
      render :new
      end
    end
    
    def destroy
      session[:author_id] = nil 
      redirect_to root_path, notice: 'Logged out successfully'
    end
    
    
end
