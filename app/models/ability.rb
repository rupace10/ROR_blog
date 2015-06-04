class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.role? :administrator
        can :manage, :all
    elsif user.role? :moderator
        can :manage, Comment
        can :read, :all
    else
        can :manage, Article
        can :read, :all
    end
  end
end
