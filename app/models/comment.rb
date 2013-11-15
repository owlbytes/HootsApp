class Comment < ActiveRecord::Base

  attr_accessible :content, :flag

  belongs_to :user
  belongs_to :post

end