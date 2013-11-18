class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :posts
  has_many :comments
  has_many :scores
  has_many :stars

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true

  devise :database_authenticatable, 
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :confirmable,
         :timeoutable, 
         :omniauthable, 
         :confirm_within => 10.minutes,
         :omniauth_providers => [:google_oauth2]


  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :image, :role, :email, :password, :password_confirmation, :remember_me



  def self.from_omniauth(auth)
    if user = User.find_by_email(auth.info.email)
      user.provider = auth.provider
      user.uid = auth.uid
      user
    else
      where(auth.slice(:provider, :uid)).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.skip_confirmation!
        user
          #don't require email confirmation
      end
    end
  end

  def role?(r)
    self.role == r.to_s
  end
end

