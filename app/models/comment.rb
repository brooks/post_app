class Comment < ActiveRecord::Base

  belongs_to :author, class_name: User
  belongs_to :post
  belongs_to :parent, class_name: Comment
  
  has_many :sub_comments, :foreign_key => :parent_id, class_name: Comment

end
