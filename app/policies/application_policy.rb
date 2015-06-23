class ApplicationPolicy
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def index?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

end

