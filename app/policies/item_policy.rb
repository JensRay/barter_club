class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def show?
      true
    end
  end
  def new?
    true
  end

  def create?
    true
  end
end