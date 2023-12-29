class CommentUpdateJob < ApplicationJob
  queue_as :default

  def perform(comment)
 
  comment.update(admin: 'approved')
  
end
  
end


