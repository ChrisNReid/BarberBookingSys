class EmployeesEmailsController < ApplicationController
  before_action :set_employees_email, only: [:show, :edit, :update, :destroy]

  # GET /employees_emails
  # GET /employees_emails.json
  def index
    @employees_emails = EmployeesEmail.all
  end

  # GET /employees_emails/1
  # GET /employees_emails/1.json
  def show
  end

  # GET /employees_emails/new
  def new
    @employees_email = EmployeesEmail.new
  end

  # GET /employees_emails/1/edit
  def edit
  end

  # POST /employees_emails
  # POST /employees_emails.json
  def create
    @employees_email = EmployeesEmail.new(employees_email_params)

    respond_to do |format|
      if @employees_email.save
        format.html { redirect_to @employees_email, notice: 'Employees email was successfully created.' }
        format.json { render :show, status: :created, location: @employees_email }
      else
        format.html { render :new }
        format.json { render json: @employees_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees_emails/1
  # PATCH/PUT /employees_emails/1.json
  def update
    respond_to do |format|
      if @employees_email.update(employees_email_params)
        format.html { redirect_to @employees_email, notice: 'Employees email was successfully updated.' }
        format.json { render :show, status: :ok, location: @employees_email }
      else
        format.html { render :edit }
        format.json { render json: @employees_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees_emails/1
  # DELETE /employees_emails/1.json
  def destroy
    @employees_email.destroy
    respond_to do |format|
      format.html { redirect_to employees_emails_url, notice: 'Employees email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employees_email
      @employees_email = EmployeesEmail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employees_email_params
      params.require(:employees_email).permit(:employee_id, :email)
    end
end
