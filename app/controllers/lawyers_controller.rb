class LawyersController < ApplicationController

before_action :set_lawyer, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, except: [:index, :show]



  def index
  @lawyer = Lawyer.all
  end
  # GET /discussions/new
  def new
    @lawyer = current_user.lawyer.build
  end
  # def create
  #   @user = User.find(params[:user_id])
  #   @lawyer = @user.lawyers.create(params[:lawyer]).permit(:prefix, :firstname, :middlename, :lastname, :firmname, :phone)
  #
  #   redirect_to user_path(@user)
  # end


  def create
    @lawyer = current_user.lawyer.build(lawyer_params)

    respond_to do |format|
      if @lawyer.save
        format.html { redirect_to @lawyer, notice: 'Discussion was successfully created.' }
        format.json { render :show, status: :created, location: @lawyer }
      else
        format.html { render :new }
        format.json { render json: @lawyer.errors, status: :unprocessable_entity }
      end
    end
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lawyer
      @laywer = Lawyer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lawyer_params
      params.require(:lawyer).permit(:prefix, :firstname, :middlename, :lastname, :firmname, :phone)
    end

end
