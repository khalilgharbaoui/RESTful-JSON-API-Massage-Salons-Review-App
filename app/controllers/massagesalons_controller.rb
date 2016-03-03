class MassagesalonsController < ApplicationController
  def index
    massagesalons = Massagesalon.order(id: :asc)
    render json: {
      meta: {
        count: Massagesalon.count,
        page: 0
      },
      massagesalons: massagesalons.as_json({include: :reviews, methods: :average_rating})
    }
  end

  def show
    massagesalon = Massagesalon.find(params[:id])
    average_rating = massagesalon.average_rating
    render json: {
      massagesalon: massagesalon,
      average_rating: average_rating
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
