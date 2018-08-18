class UserPolicy < ApplicationPolicy
 attr_reader :user, :record

 class Scope < Scope
  def resolve
    scope.where(id: @user.try(:id))
  end
 end

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    false
  end

  def show?
    user_is_owner_of_profile?
  end

  def create?
    user_is_owner_of_profile?
  end

  def new?
    user.id == current_user
  end

  def update?
    record.try(:id) == @user.id
  end

  def edit?
    update?
  end

  def destroy?
    user_is_owner_of_profile?
  end

  def user_is_owner_of_profile?
    current_user == @user.id
  end
end