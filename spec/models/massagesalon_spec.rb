require 'rails_helper'

RSpec.describe Massagesalon, type: :model do
  it {is_expected.to validate_presence_of(:massage_salon_name && :massage_salon_city && :massage_salon_description) }
  it {is_expected.to have_many(:reviews)}
end
