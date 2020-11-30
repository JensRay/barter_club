class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.offer.user == user || record.offer.original_item.user == user
  end
end
