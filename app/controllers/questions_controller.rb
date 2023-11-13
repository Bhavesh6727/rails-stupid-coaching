class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # We get the user input (question) from the params[:question]
    question = params[:question]

    # == means checking if the values are the same
    if question == 'I am going to work'
      # = means assigning a new value to the variable
      @answer = 'Great!'
    elsif question.end_with?("?")
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
