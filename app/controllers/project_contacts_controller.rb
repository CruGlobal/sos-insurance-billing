class ProjectContactsController < ApplicationController
  before_action :set_project_contact, only: %i[ show edit update destroy ]

  # GET /project_contacts or /project_contacts.json
  def index
    @project_contacts = ProjectContact.all
  end

  # GET /project_contacts/1 or /project_contacts/1.json
  def show
  end

  # GET /project_contacts/new
  def new
    @project_contact = ProjectContact.new
  end

  # GET /project_contacts/1/edit
  def edit
  end

  # POST /project_contacts or /project_contacts.json
  def create
    @project_contact = ProjectContact.new(project_contact_params)

    respond_to do |format|
      if @project_contact.save
        format.html { redirect_to @project_contact, notice: "Project contact was successfully created." }
        format.json { render :show, status: :created, location: @project_contact }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_contacts/1 or /project_contacts/1.json
  def update
    respond_to do |format|
      if @project_contact.update(project_contact_params)
        format.html { redirect_to @project_contact, notice: "Project contact was successfully updated." }
        format.json { render :show, status: :ok, location: @project_contact }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_contacts/1 or /project_contacts/1.json
  def destroy
    @project_contact.destroy!

    respond_to do |format|
      format.html { redirect_to project_contacts_path, status: :see_other, notice: "Project contact was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_contact
      @project_contact = ProjectContact.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def project_contact_params
      params.expect(project_contact: [ :name, :email, :phone, :project_id ])
    end
end
