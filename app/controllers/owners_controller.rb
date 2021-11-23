class OwnersController < ApplicationController
    get "/owners" do
        owners = Owner.all
        owners.to_json
      end

      get "/owners/:id" do
        owner = Owner.find(params[:id])
        owner.to_json
      end

      delete "/owner/:id" do
        owner = Owner.find(params[:id])
        owner.destroy
        owner.to_json
      end

      post "/owners" do
    owner = Owner.create(
      name: params[:name]
    )
    owner.to_json
  end
end