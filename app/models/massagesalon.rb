class Massagesalon < ActiveRecord::Base
  validates :massage_salon_name, :massage_salon_city, :massage_salon_description, presence:true
end
