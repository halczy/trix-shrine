require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #setup_trix" do
    it 'returns http success' do
      get :setup_trix
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #setup_shrine" do
    it 'returns http success' do
      get :setup_shrine
      expect(response).to have_http_status(:success)
    end
  end

end
