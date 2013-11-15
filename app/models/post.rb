class Post < ActiveRecord::Base

  attr_accessible :content, :image, :geostamp, :flag

  belongs_to :user
  has_many :comments
  has_many :scores
  has_many :stars

  validates :content, presence: true

end