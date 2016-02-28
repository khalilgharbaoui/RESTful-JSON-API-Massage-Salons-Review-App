require 'rails_helper'

RSpec.describe MassagesalonsController, type: :controller do

      describe "GET #index" do
        it "gives a Massagesalons list in JSON" do
          get :index, format: :json
        end
      end
      
      describe 'GET status' do
        before { get :index }
        it { should respond_with(200) }
      end



end
