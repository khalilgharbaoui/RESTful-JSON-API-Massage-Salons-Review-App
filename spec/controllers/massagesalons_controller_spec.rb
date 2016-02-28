require 'rails_helper'
#
# # This spec was generated by rspec-rails when you ran the scaffold generator.
# # It demonstrates how one might use RSpec to specify the controller code that
# # was generated by Rails when you ran the scaffold generator.
# #
# # It assumes that the implementation code is generated by the rails scaffold
# # generator.  If you are using any extension libraries to generate different
# # controller code, this generated spec may or may not pass.
# #
# # It only uses APIs available in rails and/or rspec-rails.  There are a number
# # of tools you can use to make these specs even more expressive, but we're
# # sticking to rails and rspec-rails APIs to keep things simple and stable.
# #
# # Compared to earlier versions of this generator, there is very limited use of
# # stubs and message expectations in this spec.  Stubs are only used when there
# # is no simpler way to get a handle on the object needed for the example.
# # Message expectations are only used when there is no simpler way to specify
# # that an instance is receiving a specific message.
#
RSpec.describe MassagesalonsController, type: :controller do

  describe "GET #index" do
    it "gives a JSON of all Massagesalons" do
      get :index, format: :json
    end
  end


#
#   # This should return the minimal set of attributes required to create a valid
#   # Massagesalon. As you add validations to Massagesalon, be sure to
#   # adjust the attributes here as well.
#   let(:valid_attributes) {
#     skip("Add a hash of attributes valid for your model")
#   }
#
#   let(:invalid_attributes) {
#     skip("Add a hash of attributes invalid for your model")
#   }
#
#   # This should return the minimal set of values that should be in the session
#   # in order to pass any filters (e.g. authentication) defined in
#   # MassagesalonsController. Be sure to keep this updated too.
#   let(:valid_session) { {} }
#
#   describe "GET #index" do
#     it "assigns all massagesalons as @massagesalons" do
#       massagesalon = Massagesalon.create! valid_attributes
#       get :index, {}, valid_session
#       expect(assigns(:massagesalons)).to eq([massagesalon])
#     end
#   end
#
#   describe "GET #show" do
#     it "assigns the requested massagesalon as @massagesalon" do
#       massagesalon = Massagesalon.create! valid_attributes
#       get :show, {:id => massagesalon.to_param}, valid_session
#       expect(assigns(:massagesalon)).to eq(massagesalon)
#     end
#   end
#
#   describe "GET #new" do
#     it "assigns a new massagesalon as @massagesalon" do
#       get :new, {}, valid_session
#       expect(assigns(:massagesalon)).to be_a_new(Massagesalon)
#     end
#   end
#
#   describe "GET #edit" do
#     it "assigns the requested massagesalon as @massagesalon" do
#       massagesalon = Massagesalon.create! valid_attributes
#       get :edit, {:id => massagesalon.to_param}, valid_session
#       expect(assigns(:massagesalon)).to eq(massagesalon)
#     end
#   end
#
#   describe "POST #create" do
#     context "with valid params" do
#       it "creates a new Massagesalon" do
#         expect {
#           post :create, {:massagesalon => valid_attributes}, valid_session
#         }.to change(Massagesalon, :count).by(1)
#       end
#
#       it "assigns a newly created massagesalon as @massagesalon" do
#         post :create, {:massagesalon => valid_attributes}, valid_session
#         expect(assigns(:massagesalon)).to be_a(Massagesalon)
#         expect(assigns(:massagesalon)).to be_persisted
#       end
#
#       it "redirects to the created massagesalon" do
#         post :create, {:massagesalon => valid_attributes}, valid_session
#         expect(response).to redirect_to(Massagesalon.last)
#       end
#     end
#
#     context "with invalid params" do
#       it "assigns a newly created but unsaved massagesalon as @massagesalon" do
#         post :create, {:massagesalon => invalid_attributes}, valid_session
#         expect(assigns(:massagesalon)).to be_a_new(Massagesalon)
#       end
#
#       it "re-renders the 'new' template" do
#         post :create, {:massagesalon => invalid_attributes}, valid_session
#         expect(response).to render_template("new")
#       end
#     end
#   end
#
#   describe "PUT #update" do
#     context "with valid params" do
#       let(:new_attributes) {
#         skip("Add a hash of attributes valid for your model")
#       }
#
#       it "updates the requested massagesalon" do
#         massagesalon = Massagesalon.create! valid_attributes
#         put :update, {:id => massagesalon.to_param, :massagesalon => new_attributes}, valid_session
#         massagesalon.reload
#         skip("Add assertions for updated state")
#       end
#
#       it "assigns the requested massagesalon as @massagesalon" do
#         massagesalon = Massagesalon.create! valid_attributes
#         put :update, {:id => massagesalon.to_param, :massagesalon => valid_attributes}, valid_session
#         expect(assigns(:massagesalon)).to eq(massagesalon)
#       end
#
#       it "redirects to the massagesalon" do
#         massagesalon = Massagesalon.create! valid_attributes
#         put :update, {:id => massagesalon.to_param, :massagesalon => valid_attributes}, valid_session
#         expect(response).to redirect_to(massagesalon)
#       end
#     end
#
#     context "with invalid params" do
#       it "assigns the massagesalon as @massagesalon" do
#         massagesalon = Massagesalon.create! valid_attributes
#         put :update, {:id => massagesalon.to_param, :massagesalon => invalid_attributes}, valid_session
#         expect(assigns(:massagesalon)).to eq(massagesalon)
#       end
#
#       it "re-renders the 'edit' template" do
#         massagesalon = Massagesalon.create! valid_attributes
#         put :update, {:id => massagesalon.to_param, :massagesalon => invalid_attributes}, valid_session
#         expect(response).to render_template("edit")
#       end
#     end
#   end
#
#   describe "DELETE #destroy" do
#     it "destroys the requested massagesalon" do
#       massagesalon = Massagesalon.create! valid_attributes
#       expect {
#         delete :destroy, {:id => massagesalon.to_param}, valid_session
#       }.to change(Massagesalon, :count).by(-1)
#     end
#
#     it "redirects to the massagesalons list" do
#       massagesalon = Massagesalon.create! valid_attributes
#       delete :destroy, {:id => massagesalon.to_param}, valid_session
#       expect(response).to redirect_to(massagesalons_url)
#     end
#   end
#
end
