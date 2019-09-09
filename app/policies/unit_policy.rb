class UnitPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve?
      scope.all
    end
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
      user != nil
    end

  def edit?
    true
  end
end
