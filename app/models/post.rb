class Post < ActiveRecord::Base

  attr_accessible :content, :image, :geostamp, :flag, :score, :upvoters, :downvoters

  belongs_to :user
  has_many :comments
  has_many :scores
  has_many :stars

  validates :content, presence: true
  
  mount_uploader :image, ImageUploader

  self.per_page = 2

  def deserialize(post)
    @post = post
    upvoters = @post.upvoters[1..-2].split(',').collect! {|n| n.to_i}
    downvoters = @post.downvoters[1..-2].split(',').collect! {|n| n.to_i}
    return upvoters, downvoters
  end

  def comment_count
    comments.count
  end

  def send_texts(current_user, content)
    curr_user = User.find(current_user.id)
    tel_numbers = curr_user.destring_favs(curr_user)
    tel_numbers.each do |id|
      user = User.find(id)
      TextMessage.new("#{curr_user.name} says #{content}", user.phone_no.to_s).send
    end
  end

end