class AddFileUploadToQuestion < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :file_attachment, :string
  end
end
