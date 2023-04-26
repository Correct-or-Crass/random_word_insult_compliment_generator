require 'rails_helper'

RSpec.describe "compliments" do
  it 'lists all compliments' do
    compliment_1 = Compliment.create!(compliment_phrase: "You're about as useful as a screen door on a submarine.")
    compliment_2 = Compliment.create!(compliment_phrase: "If I throw a stick, will you leave?")
    get "/api/v1/compliments"

    parse = JSON.parse(response.body, symbolize_names: true)[:data]
    expect(parse).to be_a Hash
    expect(parse).to have_key (:attributes)
    expect(parse[:attributes]).to be_a Hash
    expect(parse[:attributes]).to have_key (:compliment_phrase)
    expect(parse[:attributes][:compliment_phrase]).to be_a String

  end
end