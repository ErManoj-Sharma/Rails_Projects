class AddQuestionImageToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :question_image, :string
  end
end
