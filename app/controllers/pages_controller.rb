class PagesController < ApplicationController
  layout 'sub_page'

  def about
    @registration = Registration.new
  end

  def about_create
    @registration = Registration.new(registration_params)

    if @registration.subscribe
      cookies[:subscribed] = true
      redirect_to about_path, notice: @registration.notice
    else
      flash.now[:error] = @registration.error_message
      render action: :about
    end
  end

protected

  def registration_params
    params[:registration]
  end
end
