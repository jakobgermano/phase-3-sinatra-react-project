class CatsController < ApplicationController
    get "/cats" do
      end
      
        get "/cats/:id" do
          cat = Cat.find(params[:id])
          cat.to_json
        end
      
        delete "/cats/:id" do
          cat = Cat.find(params[:id])
          cat.destroy
          cat.to_json
        end
      
        post "/cats" do
          cat = Cat.create(
            name: params[:name],
            gender: params[:gender],
            age: params[:age],
            owner_id: params[:owner_id]
          )
          cat.to_json
        end
end