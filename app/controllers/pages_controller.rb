class PagesController < ApplicationController
  # layout :layout_for_page

protected

  def layout_for_page
    case params[:action]
    when 'home'
      'home'
    else
      'application'
    end
  end

end