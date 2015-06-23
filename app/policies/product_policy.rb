class ProductPolicy < ApplicationPolicy
  attr_reader :user, :product

  def initialize(user, product)
    super(user)
    @product = product
  end

  def show?
    scope.where(:id => product.id).exists?
  end

  def update?
    product_belongs_to_user?
  end

  def edit?
    product_belongs_to_user?
  end

  def destroy?
    product_belongs_to_user?
  end

  def product_belongs_to_user?
    @user == @product.user
  end

  def scope
    Pundit.policy_scope!(user, product.class)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end
end

