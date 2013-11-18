class Post < ActiveRecord::Base

  attr_accessible :content, :image, :geostamp, :flag

  belongs_to :user
  has_many :comments
  has_many :scores
  has_many :stars

  validates :content, presence: true

  def current_post_score(post)
    
    post.scores.each do |score|
      score_array << score.return_value
    end
    
    score = score_array.reduce(:+)
  end

  def user_voted_check(post)
    post.scores.find_by_id(current_user.id)?  
  end

  def comment_count
    comments.count
  end
end