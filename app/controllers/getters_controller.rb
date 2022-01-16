class GettersController < ApplicationController
  before_action :set_getter, only: %i[ show edit update destroy ]
  before_action :admin_loggedin?,only: %i[edit update destroy ]
  # GET /getters or /getters.json
  def index
    @getters = Getter.all
  end

  # GET /getters/1 or /getters/1.json
  def show
  end

  # GET /getters/new
  def new
    @getter = Getter.new
  end

  # GET /getters/1/edit
  def edit
  end

  # POST /getters or /getters.json
  def create
    @getter = Getter.new(getter_params)

    respond_to do |format|
      if @getter.save
        format.html { redirect_to getter_url(@getter), notice: "Getter was successfully created." }
        format.json { render :show, status: :created, location: @getter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @getter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /getters/1 or /getters/1.json
  def update
    respond_to do |format|
      if @getter.update(getter_params)
        format.html { redirect_to getter_url(@getter), notice: "Getter was successfully updated." }
        format.json { render :show, status: :ok, location: @getter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @getter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /getters/1 or /getters/1.json
  def destroy
    @getter.destroy

    respond_to do |format|
      format.html { redirect_to getters_url, notice: "Getter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_getter
      @getter = Getter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def getter_params
      params.require(:getter).permit(:firstname, :lastname, :contact, :location, :need, :image)
    end
    def admin_loggedin?
      if session[:admin].nil?
        flash[:notice] = "You need to login as Admin to continue"
        redirect_to :controller=>:admin, :action=>:login
      end
    end
    
end
