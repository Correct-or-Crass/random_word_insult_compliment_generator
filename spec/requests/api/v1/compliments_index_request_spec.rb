require 'rails_helper'

RSpec.describe "compliments" do
  it 'returns random compliment' do
    compliment_1 = Compliment.create!(compliment_phrase: "You’re a smart cookie.")
    compliment_2 = Compliment.create!(compliment_phrase: "You deserve a hug right now.")
    get "/api/v1/compliments"

    parse = JSON.parse(response.body, symbolize_names: true)[:data]
    expect(parse).to be_a Hash
    expect(parse).to have_key (:attributes)
    expect(parse[:attributes]).to be_a Hash
    expect(parse[:attributes]).to have_key (:compliment_phrase)
    expect(parse[:attributes][:compliment_phrase]).to be_a String

  end
end