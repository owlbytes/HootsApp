class Post < ActiveRecord::Base

  attr_accessible :content, :image, :geostamp, :flag, :score, :upvoters, :downvoters

  belongs_to :user
  has_many :comments
  has_many :scores
  has_many :stars

  validates :content, presence: true

  def current_post_score(post)
    post.score
  end

  def serialize(ups, downs)
    @ups = ups
    @downs = downs
    upvoters = @ups.to_s
    downvoters = @downs.to_s  
    return upvoters, downvoters
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