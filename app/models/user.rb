class User < ActiveRecord::Base

  attr_accessible :name, :image, :email, :role

  has_many :posts
  has_many :comments
  has_many :scores
  has_many :stars

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true

end