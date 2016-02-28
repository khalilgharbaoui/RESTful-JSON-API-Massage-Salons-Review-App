require 'rails_helper'

RSpec.describe Review, type: :model do
it{is_expected.to belong_to :massagesalon}


describe "only 1 .. 5 in ratings" do
    it {should validate_inclusion_of(:review). in_array([1, 2, 3, 4, 5]) }
  end


end
