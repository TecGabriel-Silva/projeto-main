class RegisterProductsController < ApplicationController
  before_action :set_register_product, only: %i[ show edit update destroy ]

  # GET /register_products or /register_products.json
  def index
    @register_products = RegisterProduct.all
  end

  # GET /register_products/1 or /register_products/1.json
  def show
  end

  # GET /register_products/new
  def new
    @register_product = RegisterProduct.new
  end

  # GET /register_products/1/edit
  def edit
  end

  # POST /register_products or /register_products.json
  def create
    @register_product = RegisterProduct.new(register_product_params)

    respond_to do |format|
      if @register_product.save
        format.html { redirect_to register_product_url(@register_product), notice: "Produto Criado com sucesso" }
        format.json { render :show, status: :created, location: @register_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @register_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /register_products/1 or /register_products/1.json
  def update
    respond_to do |format|
      if @register_product.update(register_product_params)
        format.html { redirect_to register_product_url(@register_product), notice: "Produto Editado com sucesso" }
        format.json { render :show, status: :ok, location: @register_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @register_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /register_products/1 or /register_products/1.json
  def destroy
    @register_product.destroy

    respond_to do |format|
      format.html { redirect_to register_products_url, notice: "Produto Apagado com sucesso" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register_product
      @register_product = RegisterProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def register_product_params
      params.require(:register_product).permit(:titulo, :descricao, :valor)
    end
end
