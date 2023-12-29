
# lib/tasks/comments.rake

namespace :comments do
  desc "Task 1 description"
  task :approve_unapproved, [:environment] do
    unapproved_comments = Comment.where(super_admin: nil)
    unapproved_comments.each do |comment|
      comment.update!(super_admin: true)
      # Your task implementation
    end
  end
end
