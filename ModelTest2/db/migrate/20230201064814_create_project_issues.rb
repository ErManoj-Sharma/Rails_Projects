class CreateProjectIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :project_issues do |t|
      t.references :project, null: false, foreign_key: true
      t.references :issue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
