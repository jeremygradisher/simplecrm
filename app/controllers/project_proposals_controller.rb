class ProjectProposalsController < ApplicationController
  before_action :set_project_proposal, only: [:show, :edit, :update, :destroy]

  # GET /project_proposals
  # GET /project_proposals.json
  def index
    @project_proposals = ProjectProposal.all
  end

  # GET /project_proposals/1
  # GET /project_proposals/1.json
  def show
  end

  # GET /project_proposals/new
  def new
    @project_proposal = ProjectProposal.new
  end

  # GET /project_proposals/1/edit
  def edit
  end

  # POST /project_proposals
  # POST /project_proposals.json
  def create
    @project_proposal = ProjectProposal.new(project_proposal_params)

    respond_to do |format|
      if @project_proposal.save
        format.html { redirect_to @project_proposal.project, notice: 'Project proposal was successfully created.' }
        format.json { render :show, status: :created, location: @project_proposal }
      else
        format.html { render :new }
        format.json { render json: @project_proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_proposals/1
  # PATCH/PUT /project_proposals/1.json
  def update
    respond_to do |format|
      if @project_proposal.update(project_proposal_params)
        format.html { redirect_to @project_proposal.project, notice: 'Project proposal was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_proposal }
      else
        format.html { render :edit }
        format.json { render json: @project_proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_proposals/1
  # DELETE /project_proposals/1.json
  def destroy
    @project_proposal.destroy
    respond_to do |format|
      format.html { redirect_to @project_proposal.project, notice: 'Project proposal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_proposal
      @project_proposal = ProjectProposal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_proposal_params
      params.require(:project_proposal).permit(:project_id, :proposal)
    end
end
