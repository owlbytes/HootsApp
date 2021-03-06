class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role == 'admin'
      can :manage, :all
    
    elsif user.role == 'user'

      can :read, :all

      can :create, Post
      can :edit, Post do |post|
        post.user == user
      end
      can :update, Post do |post|
        post.user == user
      end
      can :destroy, Post do |post|
        post.user == user
      end

      # can :create, User
      # can :edit, User do |u|
      #   u == user
      # end
      # can :update, User do |u|
      #   u == user
      # end
      # can :destroy, User do |u|
      #   u == user
      # end
      # can :favourites, User    

    else
      can :read, :all
      can :create, User

    end
  end
end
