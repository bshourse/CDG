require "rails_helper"
RSpec.describe UsersController, type: :controller do
  context "GET #new action" do
    it "returns a success response" do
      get :new
      expect(response).to be_successful
    end
  end
end
