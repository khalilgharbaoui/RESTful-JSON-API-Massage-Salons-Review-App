class Massagesalon < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
validates :massage_salon_name, :massage_salon_city, :massage_salon_description, presence:true
  # validates_presence_of :massage_salon_name, :message => "Massagesalon Name Can not be empty!"
  # validates_presence_of :massage_salon_city, :message => "Massagesalon Name City not be empty!"
  # validates_presence_of :massage_salon_description, :message => "Massagesalon Description Can not be empty!"

end
