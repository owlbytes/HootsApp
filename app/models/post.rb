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

  def serialize()
    Marshal.dump(self.upvoters)
    Marshal.dump(self.downvoters)
  end

  def deserialize(post)
    @post = post
    binding.pry
    @upvoters = Marshal.load(@post.upvoters)
    @downvoters = Marshal.load(@post.downvoters)
  end

  def comment_count
    comments.count
  end

end