class Ability
  include CanCan::Ability

  def initialize(user)
    if user.try(:admin?)
      can :access, :rails_admin
      can :manage, :all
    else
      can :read, :all
      can :manage, Product do |p|
  		  user.id == p.user_id if user.try(:id)
	    end
    end
  end
end