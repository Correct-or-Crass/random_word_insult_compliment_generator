class Api::V1::InsultsController < ApplicationController
  def index
    random_comp = Compliment.all.sample
    render json: ComplimentSerializer.new(random_comp)
  end
end