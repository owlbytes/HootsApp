class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :posts
  has_many :comments
  has_many :scores
  has_many :stars
  has_many :providers

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true

  mount_uploader :image, ImageUploader

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
         :omniauth_providers => [:google_oauth2, :facebook]


  # Setup accessible (or protected) attributes for your model

  attr_accessible :name, :image, :role, :email, :password, :password_confirmation, :remember_me, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email, :provider, :uid, :fav_users, :fav_posts

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

  include Gravtastic
  gravtastic

  def destring(user)
    fav_users = user.fav_users[1..-2].split(',').collect! {|n| n.to_i}
    return fav_users
  end
  
end

