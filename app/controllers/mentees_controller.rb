class MenteesController < ApplicationController
  before_action :set_mentee, only: [:show, :edit, :update, :destroy]

  # GET /mentees
  # GET /mentees.json
  def index
    @mentees = Mentee.all
  end

  # GET /mentees/1
  # GET /mentees/1.json
  def show
  end

  def sign_up
    @mentee = User.new
  end

  # GET /mentees/new
  def new
    @mentee = Mentee.new
  end

  # GET /mentees/1/edit
  def edit
  end

  # POST /mentees
  # POST /mentees.json
  def create
    @mentee = Mentee.new(mentee_params)
    @mentee.user = current_user
    respond_to do |format|
      if @mentee.save
        format.html { redirect_to @mentee, notice: 'Mentee was successfully created.' }
        format.json { render :show, status: :created, location: @mentee }
      else
        format.html { render :new }
        format.json { render json: @mentee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentees/1
  # PATCH/PUT /mentees/1.json
  def update
    respond_to do |format|
      if @mentee.update(mentee_params)
        format.html { redirect_to @mentee, notice: 'Your profile has been updated' }
        format.json { render :show, status: :ok, location: @mentee }
      else
        format.html { render :edit }
        format.json { render json: @mentee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentees/1
  # DELETE /mentees/1.json
  def destroy
    @mentee.destroy
    respond_to do |format|
      format.html { redirect_to mentees_url, notice: 'We are sorry to see you go' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentee
      @mentee = Mentee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mentee_params
      params.require(:mentee).permit(:image, :user_id, :first_name, :last_name, :email, :bio, :industry, :company, :rating, :phone_number, :country, :linkedin)
    end
end
