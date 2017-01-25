class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.connected?
    	can :manage, Product, user_id: user.id
    else
    	can :read, Product
    end
  end
end
