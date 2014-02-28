require_dependency "booking/application_controller"

module Booking
  class ServicesController < ApplicationController
    before_filter :require_user
    before_filter :get_page
    before_filter :get_service, :except => [:index, :new, :create]
    before_filter :set_page_title
    
    # GET /services
    # GET /services.json
    def index
      @services = Service.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @services }
      end
    end
  
    # GET /services/1
    # GET /services/1.json
    def show
      @service = Service.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @service }
      end
    end
  
    # GET /services/new
    # GET /services/new.json
    def new
      @service = Service.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @service }
      end
    end
  
    # GET /services/1/edit
    def edit
      @service = Service.find(params[:id])
    end
  
    # POST /services
    # POST /services.json
    def create
      @service = Service.new(params[:service])
  
      respond_to do |format|
        if @service.save
          format.html { redirect_to @service, notice: 'Service was successfully created.' }
          format.json { render json: @service, status: :created, location: @service }
        else
          format.html { render action: "new" }
          format.json { render json: @service.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /services/1
    # PUT /services/1.json
    def update
      @service = Service.find(params[:id])
  
      respond_to do |format|
        if @service.update_attributes(params[:service])
          format.html { redirect_to @service, notice: 'Service was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @service.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /services/1
    # DELETE /services/1.json
    def destroy
      @service = Service.find(params[:id])
      @service.destroy
  
      respond_to do |format|
        format.html { redirect_to services_url }
        format.json { head :no_content }
      end
    end
    
    protected
    
      def get_page
        @page = current_user.admin_page(params[:page_id])
        Time.zone = @page.setting.tz
      end

      def get_service
        @service = @page.services.find(params[:id])
      end

      def set_page_title
        @page_title = "Hy.ly - #{@page.name} - Booking Services"
      end
  end
end