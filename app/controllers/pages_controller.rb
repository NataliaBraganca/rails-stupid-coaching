class PagesController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.match?('\?')
                'Silly question, get a dressed and go to work!'
              else
                'I dont care, get dressed and go to work!'
              end
  end
end
