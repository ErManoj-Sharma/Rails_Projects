class ApplicationController < ActionController::Base

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { render nothing: true, status: :forbidden }
      format.xml { render xml: '...', status: :forbidden }
      format.html { redirect_to main_app.root_url, alert: exception.message }
    end
  end
end
