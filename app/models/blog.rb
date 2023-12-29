class Blog < ApplicationRecord
  belongs_to :author
  has_many :comments, as: :commentable 
end
