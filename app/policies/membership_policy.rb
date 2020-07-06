class MembershipPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    record.groupe.user = user
  end

  def create?
    record.groupe.user == user
  end


end
