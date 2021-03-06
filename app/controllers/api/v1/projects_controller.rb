module Api
  module V1
    class ProjectsController < ApplicationController
      http_basic_authenticate_with name: "admin", password: "secret"

      respond_to :json
      
      def index
        respond_with Project.all
      end
      
      def show
        respond_with Project.find(params[:id])
      end
      
      def create
        respond_with Project.create(params[:project])
      end
      
      def update
        respond_with Project.update(params[:id], params[:projects])
      end
      
      def destroy
        respond_with Project.destroy(params[:id])
      end
    end
  end
end
