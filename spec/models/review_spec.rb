require 'rails_helper'

RSpec.describe Review, type: :model do
it{is_expected.to belong_to :massagesalon}

it {is_expected.to validate_presence_of(:reviewer_name && :review && :rating) }

describe "only 1 2 3 4 or 5 allowed in ratings" do
    it {should validate_inclusion_of(:rating). in_array([1, 2, 3, 4, 5]) }
  end


end
