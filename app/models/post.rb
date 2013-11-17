class Post < ActiveRecord::Base

  attr_accessible :content, :image, :geostamp, :flag

  belongs_to :user
  has_many :comments
  has_many :scores
  has_many :stars

  def current_post_score(post)
    score_array = []

    post.scores.each do |score|
      score_array << score.score
    end

    score = score_array.reduce(:+)
  end

  def comment_count
    comments.count
  end

  validates :content, presence: true

end