class PatientsController < ApplicationController
  def index
    @patients = Patient.where(cured: false)
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new # Needed to instantiate the form_with
  end

  def create
    @patient = Patient.new(doctor_params)
    if @patient.save
      redirect_to root_path, notice: 'Patient was successfully created.'
    else
      render :new
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params) # Will raise ActiveModel::ForbiddenAttributesError
      redirect_to patient_path(@patient)
    else
      render :edit
    end
  end

  def destroy
    @dpatient = Patient.find(params[:id])
    @patient.destroy
    redirect_to root_path, notice: 'Doctor was successfully deleted.'
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :insurance, :cured)
  end
end
