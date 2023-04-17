require 'rails_helper'

RSpec.desribe Insult, type: :model do
  describe "validations" do
    it { should validate_presence_of: insult }
  end
end