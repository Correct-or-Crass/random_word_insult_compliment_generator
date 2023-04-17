class Api::V1::InsultsController < ApplicationController
  def index
    random_phrase = Insult.all.sample
    render json: InsultSerializer.new(random_phrase)
  end
end