class RegistrationController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)

    if @registration.subscribe
      redirect_to root_path, notice: 'Success!'
    else
      flash.now[:error] = @registration.errors.full_messages.join(', ')
      render action: :new
    end
  end

protected

  def registration_params
    params[:registration]
  end
end
