class ProjectContractsController < ApplicationController
  before_action :set_project_contract, only: [:show, :edit, :update, :destroy]

  # GET /project_contracts
  # GET /project_contracts.json
  def index
    @project_contracts = ProjectContract.all
  end

  # GET /project_contracts/1
  # GET /project_contracts/1.json
  def show
  end

  # GET /project_contracts/new
  def new
    @project_contract = ProjectContract.new
  end

  # GET /project_contracts/1/edit
  def edit
  end

  # POST /project_contracts
  # POST /project_contracts.json
  def create
    @project_contract = ProjectContract.new(project_contract_params)

    respond_to do |format|
      if @project_contract.save
        format.html { redirect_to @project_contract, notice: 'Project contract was successfully created.' }
        format.json { render :show, status: :created, location: @project_contract }
      else
        format.html { render :new }
        format.json { render json: @project_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_contracts/1
  # PATCH/PUT /project_contracts/1.json
  def update
    respond_to do |format|
      if @project_contract.update(project_contract_params)
        format.html { redirect_to @project_contract.project, notice: 'Project contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_contract }
      else
        format.html { render :edit }
        format.json { render json: @project_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_contracts/1
  # DELETE /project_contracts/1.json
  def destroy
    @project_contract.destroy
    respond_to do |format|
      format.html { redirect_to @project_contract.project, notice: 'Project contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_contract
      @project_contract = ProjectContract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_contract_params
      params.require(:project_contract).permit(:project_id, :contract)
    end
end
