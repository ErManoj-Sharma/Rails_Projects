class User < ApplicationRecord
    has_many :issue_assignments , dependent: :destroy
    has_many :issues, through: :issue_assignments , dependent: :destroy

    has_many :project_users ,dependent: :destroy
    has_many :projects,through: :project_users , dependent: :destroy
end
