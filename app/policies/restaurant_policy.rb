class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def update?
    record.user == user
  end

  def create?
    user
  end

  def destroy?
    record.user == user
  end
end

# wQzsaf4o2D25_2gPQ8Jz