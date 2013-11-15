class User < ActiveRecord::Base

  attr_accessible :name, :image, :email, :role

  has_many :posts
  has_many :comments
  has_many :scores
  has_many :stars

end