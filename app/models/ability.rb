class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.connected?
    	can :manage, Product, user_id: user.id
    end
    can :read, Product
  end
end
