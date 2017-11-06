class PagesController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    @answer = ""

    # method takes a string as an argument and returns a string
    def give_answer(question)
      if question.downcase == 'i am going to work'
        'Great!'
      elsif question.chars[-1] == '?'
        'Silly question, get dressed and go to work!'
      else
        'I don\'t care, get dressed and go to work!'
      end
    end

    @answer = give_answer(@question)
  end
end
