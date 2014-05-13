class RegistrationController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)

    if @registration.valid?
      @registration.subscribe!
      redirect_to root_path, notice: 'Success!'
    else
      render action: :new
    end
  end

protected

  def registration_params
    params[:registration]
  end
end
