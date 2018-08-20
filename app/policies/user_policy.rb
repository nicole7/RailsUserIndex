class UserPolicy < ApplicationPolicy
  def index?
    true
  end
  def new?
    true
  end
  def create?
    true
  end
  def edit?
    update?
  end
  def update?
    current_user.exists?
  end
  def destroy?
    true
  end
  def show?
    true
  end

end

