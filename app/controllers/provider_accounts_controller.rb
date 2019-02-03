class ProviderAccountsController < ApplicationController
  before_action :set_provider_account, only: [:show, :edit, :update, :destroy]

  # GET /provider_accounts
  # GET /provider_accounts.json
  def index
    @provider_accounts = ProviderAccount.all
  end

  # GET /provider_accounts/1
  # GET /provider_accounts/1.json
  def show
  end

  # GET /provider_accounts/new
  def new
    @provider_account = ProviderAccount.new
  end

  # GET /provider_accounts/1/edit
  def edit
  end

  # POST /provider_accounts
  # POST /provider_accounts.json
  def create
    @provider_account = ProviderAccount.new(provider_account_params)

    respond_to do |format|
      if @provider_account.save
        format.html { redirect_to @provider_account, notice: 'Provider account was successfully created.' }
        format.json { render :show, status: :created, location: @provider_account }
      else
        format.html { render :new }
        format.json { render json: @provider_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /provider_accounts/1
  # PATCH/PUT /provider_accounts/1.json
  def update
    respond_to do |format|
      if @provider_account.update(provider_account_params)
        format.html { redirect_to @provider_account, notice: 'Provider account was successfully updated.' }
        format.json { render :show, status: :ok, location: @provider_account }
      else
        format.html { render :edit }
        format.json { render json: @provider_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provider_accounts/1
  # DELETE /provider_accounts/1.json
  def destroy
    @provider_account.destroy
    respond_to do |format|
      format.html { redirect_to provider_accounts_url, notice: 'Provider account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider_account
      @provider_account = ProviderAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provider_account_params
      params.require(:provider_account).permit(:providerID, :providerIngredients_id, :accountable_id, :accountable_type)
    end
end
