class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :timeoutable, :confirm_within => 10.minutes

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :image, :role, :email, :password, :password_confirmation, :remember_me


  has_many :posts
  has_many :comments
  has_many :scores
  has_many :stars

end