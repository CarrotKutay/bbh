class DiscountClassesController < ApplicationController
  before_action :set_discount_class, only: [:show, :edit, :update, :destroy]

  # GET /discount_classes
  # GET /discount_classes.json
  def index
    @discount_classes = DiscountClass.all
  end

  # GET /discount_classes/1
  # GET /discount_classes/1.json
  def show
  end

  # GET /discount_classes/new
  def new
    @discount_class = DiscountClass.new
  end

  # GET /discount_classes/1/edit
  def edit
  end

  # POST /discount_classes
  # POST /discount_classes.json
  def create
    @discount_class = DiscountClass.new(discount_class_params)

    respond_to do |format|
      if @discount_class.save
        format.html { redirect_to @discount_class, notice: 'Discount class was successfully created.' }
        format.json { render :show, status: :created, location: @discount_class }
      else
        format.html { render :new }
        format.json { render json: @discount_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discount_classes/1
  # PATCH/PUT /discount_classes/1.json
  def update
    respond_to do |format|
      if @discount_class.update(discount_class_params)
        format.html { redirect_to @discount_class, notice: 'Discount class was successfully updated.' }
        format.json { render :show, status: :ok, location: @discount_class }
      else
        format.html { render :edit }
        format.json { render json: @discount_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discount_classes/1
  # DELETE /discount_classes/1.json
  def destroy
    @discount_class.destroy
    respond_to do |format|
      format.html { redirect_to discount_classes_url, notice: 'Discount class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discount_class
      @discount_class = DiscountClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discount_class_params
      params.require(:discount_class).permit(:class_id, :description)
    end
end
