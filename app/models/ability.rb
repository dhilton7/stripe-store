class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    can :manage, Product, user_id: user.id
    can :read, Product
  end
end
