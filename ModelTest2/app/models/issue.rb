class Issue < ApplicationRecord
    has_many :project_issues , dependent: :destroy
    has_many :projects, through: :project_issues , dependent: :destroy

    has_many :issue_assignments , dependent: :destroy
    has_many :user,through: :issue_assignments , dependent: :destroy
end
