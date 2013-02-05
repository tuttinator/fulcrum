module Api
  module V1
    class StoriesController < ApplicationController
      respond_to :json
      
      def index
        respond_with Story.all
      end
      
      def show
        respond_with Story.find(params[:id])
      end
      
      def create
        respond_with Story.create(params[:story])
      end
      
      def update
        respond_with Story.update(params[:id], params[:stories])
      end
      
      def destroy
        respond_with Story.destroy(params[:id])
      end
    end
  end
end
