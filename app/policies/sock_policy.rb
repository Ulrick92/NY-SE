class SockPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    return true
  end

  def update?
    return true
  end
  def update?
    is_user_current?
  end

  def destroy?
    is_user_current?
  end

  private

  def is_user_current?
    record.user == user
  end
end
