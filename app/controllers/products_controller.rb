class ProductsController < ApplicationController
  
  before_action :set_product, only: [:show, :edit, :update, :destroy]  #%i[ show edit update destroy ]
  before_action :set_open_ssl, only: [:new, :edit]
  #respond_to :html, :json, :js 

  require 'nokogiri'
  require 'open-uri'
  
  # GET /products or /products.json
  def index
    @products = Product.all
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
        format.js  #SEE IF WANT TO SHOW THE ERROR MESSAGE if js isn't present
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def set_open_ssl
      require 'openssl'
      doc = Nokogiri::HTML(URI.open('https://freecurrencyrates.com/en/convert-USD-COP', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))
      @rate = doc.css('span.src-entry-to').text 
    end    

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :valor_usd, :valor_cop, :impuesto, :seguro, :flete, :aduana, :total_envio_usd, :total_envio_cop, :action, :bought, :valor_maximo_cop, :peso, :total_cost, :exchange_rate)
    end
end
