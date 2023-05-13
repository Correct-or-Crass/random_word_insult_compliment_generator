class Api::V1::WordsController < ApplicationController
  def index
    if params[:amount] == ("")
      amount = 1
    else
      amount = params[:amount].to_i
    end
    
    word = Word.all.sample(amount)
    render json: WordSerializer.new(word)
  end
end
