class CommentairePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user
  end

  def create?
    user
  end

  def show?
    user
  end

  def destroy?
    record.user == user
  end


end
