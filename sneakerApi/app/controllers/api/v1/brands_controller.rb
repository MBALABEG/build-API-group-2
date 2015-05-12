module Api
  class API::V1::BrandsController < ApplicationController
      protect_from_forgery with: :null_session
      def index
          brands = Brand.all
           render json: brands, only: [:name, :id]
      end
      def show
        brand = Brand.find(params[:id])
        render json: brand, except: [:created_at, :updated_at]
      end
end
end