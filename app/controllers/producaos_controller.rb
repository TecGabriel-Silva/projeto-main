class ProducaosController < ApplicationController
  before_action :set_producao, only: %i[ show edit update destroy ]

  # GET /producaos or /producaos.json
  def index
    @producaos = Producao.all
    @producao = Producao.new
  end

  # GET /producaos/1 or /producaos/1.json
  def show
  end

  # GET /producaos/new
  def new
    @producao = Producao.new
  end

  # GET /producaos/1/edit
  def edit
  end

  # POST /producaos or /producaos.json
  def create
    @producao = Producao.new(producao_params)

    respond_to do |format|
      if @producao.save
        format.html { redirect_to producao_url(@producao), notice: "Producao was successfully created." }
        format.json { render :show, status: :created, location: @producao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @producao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producaos/1 or /producaos/1.json
  def update
    respond_to do |format|
      if @producao.update(producao_params)
        format.html { redirect_to producao_url(@producao), notice: "Producao was successfully updated." }
        format.json { render :show, status: :ok, location: @producao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @producao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producaos/1 or /producaos/1.json
  def destroy
    @producao.destroy

    respond_to do |format|
      format.html { redirect_to producaos_url, notice: "Producao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producao
      @producao = Producao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def producao_params
      params.require(:producao).permit(:name, :description, :price)
    end
end
