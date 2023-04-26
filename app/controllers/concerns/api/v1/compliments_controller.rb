class Api::V1::ComplimentsController < ApplicationController
  def index
    random_comp = Compliment.all.sample
    render json: ComplimentSerializer.new(random_comp)
  end
end