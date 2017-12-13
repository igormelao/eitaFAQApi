class Api::V1::QuestionsController < Api::V1::ApiController
  before_action :set_question, only: [:show]

  def index
    @questions = current_user.questions.accessible
    render json: @questions
  end

  def show
    render json: @question
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end
end
