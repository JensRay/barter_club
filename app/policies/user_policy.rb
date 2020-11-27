class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end


  def create?
    true
  end

  def edit?
    user
  end

  def update?
    user
  end


end
