class ParticipantsController < ApplicationController
  before_action :set_project
  before_action :set_participant, only: %i[show edit update destroy]

  # GET /projects/:project_id/participants
  def index
    @participants = @project.participants
  end

  # GET /projects/:project_id/participants/:id
  def show
    @project = Project.find(params[:project_id])
    @participant = @project.participants.find(params[:id])
  end

  # GET /projects/:project_id/participants/new
  def new
    @participant = @project.participants.new
  end

  # GET /projects/:project_id/participants/:id/edit
  def edit
  end

  # POST /projects/:project_id/participants
  def create
    @participant = @project.participants.new(participant_params)

    if @participant.save
      redirect_to project_participant_path(@project, @participant), notice: "Participant was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/:project_id/participants/:id
  def update
    if @participant.update(participant_params)
      redirect_to project_participant_path(@project, @participant), notice: "Participant was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /projects/:project_id/participants/:id
  def destroy
    @participant.destroy
    redirect_to project_participants_path(@project), notice: "Participant was successfully deleted.", status: :see_other
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_participant
    @participant = @project.participants.find(params[:id])
  end

  def participant_params
    params.require(:participant).permit(:first_name, :last_name, :status, :spouse_id, :parent_id)
  end
end
