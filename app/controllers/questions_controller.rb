class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # recuperer l'input de l'utilisateur et le mettre dans une variable
    @question = params[:question]
    # @ permet de lire la variable dans la vue

    # if questi= coucou
    #   @answer = mon coahc -> "ok"
    # else
    #   mon coach -> "je comprends pas"
    # end

    if @question == "I am going to work"
      @answer = "Great!"
      # @question.include?("?")
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    # raise
    # params[:test]
    end
  end
end
