class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    #record is a review
    #If the current user who made the bid that was accepted or if the current user is the one who accepted the bid aka the owner of the original item
    record.offer.user == user || record.offer.original_item.user == user
  end
end
