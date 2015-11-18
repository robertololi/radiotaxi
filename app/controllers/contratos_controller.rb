class ContratosController < ApplicationController
  before_action :set_contrato, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:show, :index]
  respond_to :html

  def index
    @contratos = Contrato.all
    respond_with(@contratos)
  end

  def show
    respond_with(@contrato)
  end

  def new
    @contrato = Contrato.new
    respond_with(@contrato)
  end

  def edit
  end

  def create
    @contrato = Contrato.new(contrato_params)
    @contrato.save
    respond_with(@contrato)
  end

  def update
    @contrato.update(contrato_params)
    respond_with(@contrato)
  end

  def destroy
    @contrato.destroy
    respond_with(@contrato)
  end

  private
    def set_contrato
      @contrato = Contrato.find(params[:id])
    end

    def contrato_params
      params.require(:contrato).permit(:id_contrato, :id_cliente, :id_vehiculo, :id_central, :direccion, :destino, :valor)
    end
end
