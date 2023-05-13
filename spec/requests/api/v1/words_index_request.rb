require 'rails_helper'

RSpec.describe "words" do
  it 'returns a specified amount of random words' do
    word_1 = Word.create!(word: "Card")
    word_2 = Word.create!(word: "Poster")
    word_params = { amount: 2 }
    get "/api/v1/words", params: word_params

    parse = JSON.parse(response.body, symbolize_names: true)[:data]
    
    expect(parse).to be_a Array
    expect(parse.count).to eq 2
    expect(parse[0]).to have_key (:attributes)
    expect(parse[0][:attributes]).to be_a Hash
    expect(parse[0][:attributes]).to have_key (:word)
    expect(parse[0][:attributes][:word]).to be_a String
  end
end
 