require 'rails_helper'
RSpec.describe MassagesalonsController, type: :routing do

   it { should route(:get, '/').to(action: :index) }
   it { should route(:get, '/massagesalons/1/reviews/1').to("massagesalons#show", id: "1") }
#it{should route(:get, '/massagesalons/1/reviews').to("massagesalon_reviews#index", id: "1")}



end
