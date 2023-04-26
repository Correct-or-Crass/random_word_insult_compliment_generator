require 'rails_helper'

RSpec.describe Compliment do
  describe "validations" do
    it { should validate_presence_of :compliment_phrase }
  end
end