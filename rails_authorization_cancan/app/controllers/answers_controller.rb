class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(answers_params)
    @answer.user = current_user
    @answer.save

    redirect_to questions_url
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy
    redirect_to questions_url
  end

  private

  def answers_params
    params.require(:answer).permit(:content)
  end
end
