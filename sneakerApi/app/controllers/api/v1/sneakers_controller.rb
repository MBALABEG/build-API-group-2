module Api
  class API::V1::SneakersController < ApplicationController
      protect_from_forgery with: :null_session
      def index
          sneakers = Sneaker.all
           render json: sneakers, except: [:created_at, :updated_at]
      end
      def show
        sneaker = Sneaker.find(params[:id])
        render json: sneaker, except: [:created_at, :updated_at]
      end
end
end