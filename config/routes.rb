require 'api_constraints'

MarketPlaceApi::Application.routes.draw do
  namespace :api, defaults: {format: :json}, constrains: { subdomain: 'api' }, path: '/' do
    scope module: :V1, constraints: ApiConstraints.new(version: 1, default: true) do
      
    end
  end
end
