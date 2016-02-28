require 'rails_helper'

RSpec.describe Massagesalon, type: :model do
  it {is_expected.to validate_presence_of(:massage_salon_name) }
end
