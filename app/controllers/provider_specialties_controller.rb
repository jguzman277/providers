class ProviderSpecialtiesController < ApplicationController
  before_action :set_provider_specialty, only: [:show, :edit, :update, :destroy]

  # GET /provider_specialties
  # GET /provider_specialties.json
  def index
    @provider_specialties = ProviderSpecialty.all
  end

  # GET /provider_specialties/1
  # GET /provider_specialties/1.json
  def show
  end

  # GET /provider_specialties/new
  def new
    @provider_specialty = ProviderSpecialty.new
  end

  # GET /provider_specialties/1/edit
  def edit
  end

  # POST /provider_specialties
  # POST /provider_specialties.json
  def create
    @provider_specialty = ProviderSpecialty.new(provider_specialty_params)

    respond_to do |format|
      if @provider_specialty.save
        format.html { redirect_to @provider_specialty, notice: 'Provider specialty was successfully created.' }
        format.json { render :show, status: :created, location: @provider_specialty }
      else
        format.html { render :new }
        format.json { render json: @provider_specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /provider_specialties/1
  # PATCH/PUT /provider_specialties/1.json
  def update
    respond_to do |format|
      if @provider_specialty.update(provider_specialty_params)
        format.html { redirect_to @provider_specialty, notice: 'Provider specialty was successfully updated.' }
        format.json { render :show, status: :ok, location: @provider_specialty }
      else
        format.html { render :edit }
        format.json { render json: @provider_specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provider_specialties/1
  # DELETE /provider_specialties/1.json
  def destroy
    @provider_specialty.destroy
    respond_to do |format|
      format.html { redirect_to provider_specialties_url, notice: 'Provider specialty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider_specialty
      @provider_specialty = ProviderSpecialty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provider_specialty_params
      params.require(:provider_specialty).permit(:provider_specialty, :active)
    end
end
