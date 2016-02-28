class MassagesalonsController < ApplicationController
def index
  render json: {
meta: {
  count: Massagesalon.count,
  page: 0
},
  projects: Massagesalon.order(id: :desc)
}

end

end
