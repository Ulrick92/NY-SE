class TransactionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def update?
    return true
  end

  def refuses_user?
    true
  end

  def validates_user?
    true
  end

  # def confirm?
  #   return true
  # end
end
