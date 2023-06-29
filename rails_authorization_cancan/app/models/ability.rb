# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :read, :dashboard           # allow access to dashboard
    else
      can :update, Question do |question|
        question.user == user
      end
      can :destroy, Question do |question|
        question.user == user
      end

      can :update, Answer do |answer|
        answer.user == user
      end
      can :destroy, Answer do |answer|
        answer.user ==   user
      end

      can :create, Question
      can :create, Answer
    end
  end
end
