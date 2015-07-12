class AdminPolicy < ApplicationPolicy

  def index?
    false
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    record_belongs_to_user?
  end

  def edit?
    record_belongs_to_user?
  end

  def destroy?
    record_belongs_to_user?
  end

  def is_admin?
    @user.admin
  end

end