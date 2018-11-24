class UrlMappingsController < ApplicationController
  before_action :set_url_mapping, only: [:show, :edit, :update, :destroy]

  # GET /url_mappings
  # GET /url_mappings.json
  def index
    @url_mappings = UrlMapping.all
  end

  # GET /url_mappings/1
  # GET /url_mappings/1.json
  def show
  end

  # GET /url_mappings/new
  def new
    @url_mapping = UrlMapping.new
  end

  # GET /url_mappings/1/edit
  def edit
  end

  # POST /url_mappings
  # POST /url_mappings.json
  def create
    @url_mapping = UrlMapping.new(url_mapping_params)

    respond_to do |format|
      if @url_mapping.save
        format.html { redirect_to @url_mapping, notice: 'Url mapping was successfully created.' }
        format.json { render :show, status: :created, location: @url_mapping }
      else
        format.html { render :new }
        format.json { render json: @url_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /url_mappings/1
  # PATCH/PUT /url_mappings/1.json
  def update
    respond_to do |format|
      if @url_mapping.update(url_mapping_params)
        format.html { redirect_to @url_mapping, notice: 'Url mapping was successfully updated.' }
        format.json { render :show, status: :ok, location: @url_mapping }
      else
        format.html { render :edit }
        format.json { render json: @url_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /url_mappings/1
  # DELETE /url_mappings/1.json
  def destroy
    @url_mapping.destroy
    respond_to do |format|
      format.html { redirect_to url_mappings_url, notice: 'Url mapping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url_mapping
      @url_mapping = UrlMapping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def url_mapping_params
      params.require(:url_mapping).permit(:target_url, :short_path, :user_id)
    end
end
