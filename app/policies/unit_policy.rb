class UnitPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index
      true
    end

    def new
      create?
    end

    def create
      user != nil
    end
  end
end