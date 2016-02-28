class MassagesalonsController < ApplicationController
  def index
    render json: {
      meta: {
        count: Massagesalon.count,
        page: 0
      },
      massagesalons: Massagesalon.order(id: :asc)
    }
  end

  def show
    massagesalon = Massagesalon.find(params[:id])
    render json: {
      massagesalon: massagesalon
    }
  end

  def create
    if massagesalon = Massagesalon.create(massagesalon_params)
      render json: { massagesalon: massagesalon }
    else
      render json: {
        message: 'Could not create massagesalon',
        errors: massagesalon.errors
      }, status: :unprocessible_entity
    end
  end

  def update
    massagesalon = Massagesalon.find(params[:id])

    if massagesalon.update(massagesalon_params)
      render json: { massagesalon: massagesalon }
    else
      render json: {
        message: 'Could not update massagesalon',
        errors: massagesalon.errors
      }, status: :unprocessible_entity
    end
  end

  def destroy
    massagesalon = Massagesalon.find(params[:id])

    if massagesalon.destroy
      render json: { massagesalon: nil }
    else
      render json: {
        message: 'Could not destroy massagesalon, please try again'
      }, status: :unprocessible_entity
    end
  end

  private

  def massagesalon_params
    params.require(:massagesalon).permit(:massage_salon_name, :massage_salon_city, :massage_salon_description)
  end
end
