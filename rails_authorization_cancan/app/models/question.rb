class Question < ApplicationRecord
    belongs_to :user
    has_many :answers
    mount_uploader :question_image , QuestionImageUploader
    mount_uploader :file_attachment ,QuestionFileUploader
end
