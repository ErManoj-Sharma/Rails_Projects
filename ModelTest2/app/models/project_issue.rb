class ProjectIssue < ApplicationRecord
  belongs_to :project
  belongs_to :issue
end
