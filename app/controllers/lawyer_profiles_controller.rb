class LawyerProfilesController < ApplicationController
  before_action :set_lawyer_profile, only: [:show, :edit, :update, :destroy]

  #on creating/edit/deletion you should be logged in
  before_action :authenticate_user!, except: []


  # GET /lawyer_profiles
  # GET /lawyer_profiles.json
  def index
    @lawyer_profiles = LawyerProfile.all
  end

  # GET /lawyer_profiles/1
  # GET /lawyer_profiles/1.json
  def show
  end

  # GET /lawyer_profiles/new
  def new
    @lawyer_profile = LawyerProfile.new
  end

  # GET /lawyer_profiles/1/edit
  def edit
  end

  # POST /lawyer_profiles
  # POST /lawyer_profiles.json
  def create
    @lawyer_profile = LawyerProfile.new(lawyer_profile_params)

    respond_to do |format|
      if @lawyer_profile.save
        format.html { redirect_to @lawyer_profile, notice: 'Lawyer profile was successfully created.' }
        format.json { render :show, status: :created, location: @lawyer_profile }
      else
        format.html { render :new }
        format.json { render json: @lawyer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lawyer_profiles/1
  # PATCH/PUT /lawyer_profiles/1.json
  def update
    respond_to do |format|
      if @lawyer_profile.update(lawyer_profile_params)
        format.html { redirect_to @lawyer_profile, notice: 'Lawyer profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @lawyer_profile }
      else
        format.html { render :edit }
        format.json { render json: @lawyer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lawyer_profiles/1
  # DELETE /lawyer_profiles/1.json
  def destroy
    @lawyer_profile.destroy
    respond_to do |format|
      format.html { redirect_to lawyer_profiles_url, notice: 'Lawyer profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lawyer_profile
      @lawyer_profile = LawyerProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lawyer_profile_params
      params.require(:lawyer_profile).permit(:prefix, :firstname, :lastname, :middlename, :firmname, :phone)
    end
end
