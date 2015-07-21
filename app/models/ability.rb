class Ability
  include CanCan::Ability

  def initialize(user)
    if user.try(:admin?)
      can :access, :rails_admin
      can :manage, :all
    else
      can :read, :all
      if user.try(:id)
        can :manage, Product do |p|
          user.id == p.user_id 
        end
        
        can :manage, Review do |r|
          user.id == r.user_id 
        end
      end
    end
  end
end