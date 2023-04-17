require 'rails_helper'

RSpec.describe "insults" do
  it 'lists all insults' do
    insult_1 = Insult.create!(insult: “test”)
    insult_2 = Insult.create!(insult: “If I throw a stick, will you leave?”)
require 'pry'; binding.pry
    get "/api/v1/insults"

    parse = JSON.parse(response.body, symbolize_names: true)
  end
end