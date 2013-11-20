class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    
    can :read, :all
    can :create, User
    
    if user.role == 'admin'
      can :manage, :all
    
    elsif user.role == 'user'
      can :create, Post
      can :update, Post do |post|
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

    end
  end
end
