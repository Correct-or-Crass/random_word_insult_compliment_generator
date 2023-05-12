require 'rails_helper'

RSpec.describe Word do
  describe "validations" do
    it { should validate_presence_of :word }
  end
end