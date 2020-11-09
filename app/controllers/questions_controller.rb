class QuestionsController < ApplicationController
  def ask

  end

  def answer
    # params[:askform]
    @response = ''
    question = params[:askform]
    if question == 'I am going to work'
      @response = 'Great!'
    elsif question.end_with?("?")
      @response = 'Silly question, get dressed and go to work!'
    else
      @response = 'I don\'t care, get dressed and go to work!'
    end
  end
end
