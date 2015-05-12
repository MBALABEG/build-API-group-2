module Api
  class API::V1::StoresController < ApplicationController
      protect_from_forgery with: :null_session
      def index
          stores = Store.all
           render json: stores, except: [:created_at, :updated_at]
      end
      def show
        store = Store.find(params[:id])
        render json: store, except: [:created_at, :updated_at]
      end
end
end