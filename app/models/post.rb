class Post < ActiveRecord::Base

  attr_accessible :content, :image, :geostamp, :flag, :score, :upvoters, :downvoters

  belongs_to :user
  has_many :comments
  has_many :scores
  has_many :stars

  validates :content, presence: true
  
  mount_uploader :image, ImageUploader

  def self.search(query)
    where("content ilike ?", "%#{query}")
  end 

  def current_post_score(post)
    post.score
  end

  def deserialize(post)
    @post = post
    upvoters = @post.upvoters[1..-2].split(',').collect! {|n| n.to_i}
    downvoters = @post.downvoters[1..-2].split(',').collect! {|n| n.to_i}
    return upvoters, downvoters
  end

  def comment_count
    comments.count
  end

end