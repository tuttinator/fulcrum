module Api
  module V1
    class NotesController < ApplicationController
      respond_to :json
      
      def index
        respond_with Note.all
      end
      
      def show
        respond_with Note.find(params[:id])
      end
      
      def create
        respond_with Note.create(params[:note])
      end
      
      def update
        respond_with Note.update(params[:id], params[:notes])
      end
      
      def destroy
        respond_with Note.destroy(params[:id])
      end
    end
  end
end
