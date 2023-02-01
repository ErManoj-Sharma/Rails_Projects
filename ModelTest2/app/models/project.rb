class Project < ApplicationRecord
 has_many :project_issues , dependent: :destroy
 has_many :issues, through: :project_issues , dependent: :destroy

 has_many :project_users , dependent: :destroy
 has_many :users, through: :project_users , dependent: :destroy
end
