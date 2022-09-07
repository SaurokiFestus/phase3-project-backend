class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    #get
    
    get "/billboards" do
        billboards = Billboard.all   
        billboards.to_json
    end

    get '/billboards/:id' do
        billboards = Billboard.find(params[:id])
        billboards.to_json
    end

    get "/contractors" do
      contractors = Contractor.all   
      contractors.to_json
  end

    get '/contractors/:id' do
      contractors = Contractor.find(params[:id])
      contractors.to_json
    end  

    get "/locations" do
      locations= Location.all   
      locations.to_json
  end

    get '/locations/:id' do
      locations = Location.find(params[:id])
      locations.to_json
    end  

    #post
    post '/billboards' do
      send = Billboard.create(
        size_in_sqft: params[:size_in_sqft],
        location_id: params[:location_id],
        contractor_id: params[:contractor_id]
      )
      send.to_json
    end

    post '/locations' do
      send = Location.create(
        street_name: params[:street_name],
        street_address: params[:street_address]
      )
      send.to_json
    end

    post '/contractors' do
      send = Contractor.create(
        name: params[:name]
      )
      send.to_json
    end
    

    #patch
    put '/billboards/:id' do
      fix = Billboard.find(params[:id])
      fix.update(
        size_in_sqft: params[:size_in_sqft],
        location_id: params[location_id],
        contractor_id: params[contractor_id]
      )
      fix.to_json
    end

    put '/locations/:id' do
      fix = Location.find(params[:id])
      fix.update(
        street_name: params[:street_name],
        street_address: params[:street_address]
      )
      fix.to_json
    end

    put '/contractors/:id' do
      fix = Contractor.find(params[:id])
      fix.update(
        name: params[:name]
      )
      fix.to_json
    end
    
    #delete
    delete '/billboard/:id' do
      deleted = Billboard.find(params[:id])
      deleted.destroy
      deleted.to_json
    end

    delete '/locations/:id' do
      deleted = Location.find(params[:id])
      deleted.destroy
      deleted.to_json
    end

    delete '/contractors/:id' do
      deleted = Contractor.find(params[:id])
      deleted.destroy
      deleted.to_json
    end
end