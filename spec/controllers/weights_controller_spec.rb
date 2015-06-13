require 'rails_helper'

describe Admin::WeightsController do
  before(:each) do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in create(:user)
  end

  context "#update" do
    it "updates the weights" do
      menu_item1 = create(:menu_item)
      menu_item2 = create(:menu_item)

      json = {
        "model_name": "MenuItem",
        "models": {
          "#{menu_item1.id}": 12,
          "#{menu_item2.id}": 13,
        }
      }

      post :update, json

      expect(menu_item1.reload.weight).to eq(12)
      expect(menu_item2.reload.weight).to eq(13)
    end

    context "unsuccessful update" do
      it "renders false" do
        post :update, {}

        expect(JSON.parse(response.body)["success"]).to eq(false)
      end
    end
  end
end