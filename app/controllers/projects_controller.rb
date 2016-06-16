class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project_picons = @project.project_picons.all
    @project_cicons = @project.project_cicons.all
    @project_proposals = @project.project_proposals.all
  end

  # GET /projects/new
  def new
    @project = Project.new
    @project_picon = @project.project_picons.build
    @project_picons = @project.project_picons.all
    @project_cicon = @project.project_cicons.build
    @project_cicons = @project.project_cicons.all
    @project_proposal = @project.project_proposals.build
    @project_proposals = @project.project_proposals.all
  end

  # GET /projects/1/edit
  def edit
    @project_picon = @project.project_picons.build
    @project_picons = @project.project_picons.all
    @project_cicons = @project.project_cicons.build
    @project_cicons = @project.project_cicons.all
    @project_proposal = @project.project_proposals.build
    @project_proposals = @project.project_proposals.all
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
         if params.has_key?(:project_picons)
           params[:project_picons]['picon'].each do |a|
              @project_picon = @project.project_picons.create!(:picon => a)
           end
         end
         if params.has_key?(:project_cicons)
           params[:project_cicons]['cicon'].each do |a|
              @project_cicon = @project.project_cicons.create!(:cicon => a)
           end
         end
         if params.has_key?(:project_proposals)
           params[:project_proposals]['proposal'].each do |a|
              @project_proposal = @project.project_proposals.create!(:proposal => a)
           end
         end
         format.html { redirect_to @project, notice: 'Project was successfully created.' }
         format.json { render :show, status: :created, location: @project }
      else
         format.html { render action: 'new' }
         format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        if params.has_key?(:project_picons)
           params[:project_picons]['picon'].each do |a|
              @project_picon = @project.project_picons.create!(:picon => a)
           end
        end
        if params.has_key?(:project_cicons)
           params[:project_cicons]['cicon'].each do |a|
              @project_cicon = @project.project_cicons.create!(:cicon => a)
           end
        end
        if params.has_key?(:project_proposals)
           params[:project_proposals]['proposal'].each do |a|
              @project_proposal = @project.project_proposals.create!(:proposal => a)
           end
        end
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :project_status, :primary_street, :primary_city, :primary_state, :primary_zip, :client_name, :client_contact, :client_meeting, :client_proposal, :project_start, :project_finish, :billing_street, :billing_city, :billing_state, :billing_zip, :brief_description, :staffing_notes, :deal_terms, :rate, :additional_terms, :doc_links, project_picons_attributes: [:id, :project_id, :picon], project_cicons_attributes: [:id, :project_id, :cicon], project_proposals_attributes: [:id, :project_id, :proposal])
    end
end
