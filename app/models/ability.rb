class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == 'admin'
      can :manage, :all
    elsif user.role == 'user'
      can :manage, :all
      # can :read, :all
      # can :create, Post
      # if post.user == current_user
      #   can :update, Post
      #   can :destroy, Post
      # end
      # can :update, User do |u|
      #   u == user
      # end
      # can :destroy, User do |u|
      #   u == user
      # end
      # can :create, Post
      # can :update, Post do |post|
      #   post.user == user
      # end
      # can :destroy, Post do |post|
      #   post.user == user
      # end
    else
      can :read, :all
    end
  end
end
