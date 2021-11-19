class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/owners" do
    owners.to_json
  end

  get "/cats" do
  cats.to_json
end

  get "/cats/:id" do
    cat = Cat.find(params[:id])
    cat.to_json(include: :gender)
  end

  get "/owners/:id" do
    owner = Owner.find(params[:id])
    owner.to_json
  end


  delete "/cats/:id" do
    cat = Cat.find(params[:id])
    cat.destroy
    cat.to_json
  end

  delete "/owner/:id" do
    owner = Owner.find(params[:id])
    owner.destroy
    owner.to_json
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

  post "/owners" do
    owner = Owner.create(
      name: params[:name]
    )
    owner.to_json
  end


end
