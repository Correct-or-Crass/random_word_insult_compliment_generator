require 'rails_helper'

RSpec.describe Insult do
  describe "validations" do
    it { should validate_presence_of :insult_phrase }
  end
end