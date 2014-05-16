class RegistrationController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)

    if @registration.subscribe
      cookies[:subscribed] = true
      redirect_to root_path, notice: "#{@registration.first_name}, we've signed up #{@registration.email} successfully! Thanks!"
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
