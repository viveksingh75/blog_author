class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
      @current_user ||= Author.find_by(id: session[:author_id]) if session[:author_id]
    end
end
