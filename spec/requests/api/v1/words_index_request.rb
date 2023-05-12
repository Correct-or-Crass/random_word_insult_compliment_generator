require 'rails_helper'

RSpec.describe "words" do
  it 'lists all words' do
    word_1 = Word.create!(word: "Card")
    word_2 = Word.create!(word: "Poster")
    get "/api/v1/words"

    parse = JSON.parse(response.body, symbolize_names: true)[:data]
    expect(parse).to be_a Hash
    expect(parse).to have_key (:attributes)
    expect(parse[:attributes]).to be_a Hash
    expect(parse[:attributes]).to have_key (:word)
    expect(parse[:attributes][:word]).to be_a String
  end
end