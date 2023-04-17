require 'rails_helper'

RSpec.describe "insults" do
  it 'lists all insults' do
    insult_1 = Insult.create!(insult_phrase: "You're about as useful as a screen door on a submarine.")
    insult_2 = Insult.create!(insult_phrase: "If I throw a stick, will you leave?")
    get "/api/v1/insults"

    parse = JSON.parse(response.body, symbolize_names: true)[:data]
    expect(parse).to be_a Hash
    expect(parse).to have_key (:attributes)
    expect(parse[:attributes]).to be_a Hash
    expect(parse[:attributes]).to have_key (:insult_phrase)
    expect(parse[:attributes][:insult_phrase]).to be_a String

  end
end