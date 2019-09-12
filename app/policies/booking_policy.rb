class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve?
      scope.all
    end
  end

  def accept?
     user == record.unit.user
  end

  def decline?
     user == record.unit.user
  end

  def index?
    true
  end

  def new?
    create?
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def edit?
    update?
  end

  def destroy?
    true
  end
end
