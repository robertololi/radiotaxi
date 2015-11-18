class CentralesController < ApplicationController
  before_action :set_centrale, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:show, :index]

  # GET /centrales
  # GET /centrales.json
  def index
    @centrales = Centrale.all
  end

  # GET /centrales/1
  # GET /centrales/1.json
  def show
  end

  # GET /centrales/new
  def new
    @centrale = Centrale.new
  end

  # GET /centrales/1/edit
  def edit
  end

  # POST /centrales
  # POST /centrales.json
  def create
    @centrale = Centrale.new(centrale_params)

    respond_to do |format|
      if @centrale.save
        format.html { redirect_to @centrale, notice: 'Centrale was successfully created.' }
        format.json { render :show, status: :created, location: @centrale }
      else
        format.html { render :new }
        format.json { render json: @centrale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /centrales/1
  # PATCH/PUT /centrales/1.json
  def update
    respond_to do |format|
      if @centrale.update(centrale_params)
        format.html { redirect_to @centrale, notice: 'Centrale was successfully updated.' }
        format.json { render :show, status: :ok, location: @centrale }
      else
        format.html { render :edit }
        format.json { render json: @centrale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /centrales/1
  # DELETE /centrales/1.json
  def destroy
    @centrale.destroy
    respond_to do |format|
      format.html { redirect_to centrales_url, notice: 'Centrale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_centrale
      @centrale = Centrale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def centrale_params
      params.require(:centrale).permit(:id_central, :responsable, :direccion, :comuna, :telefono, :correo)
    end
end
