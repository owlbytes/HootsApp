class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    
    
    if user.role == 'admin'
      can :manage, :all
    
    elsif user.role == 'user'

      # can :update, Post, :user_id => user.id
      can :read, :all
      # can [:create, :update], Post do |post|
      #   binding.pry
      #   post.user == user
      # end
      # can :create, Post
      # can :create, Post
      can :manage, Post do |post|
        post.user == user
      end
      # can :destroy, Post do |post|
      #   post.user == user
      # end
      
      # can :manage, Comment

      # can :update, User do |u|
      #   u.id == user.id
      # end
      # can :destroy, User do |u|
      #   u.id == user.id
      # end

    else
      can :read, :all
      can :create, User

    end
  end
end
