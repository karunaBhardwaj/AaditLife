require "application_responder"

class ApplicationController < ActionController::API

  include DeviseTokenAuth::Concerns::SetUserByToken

    # Authorization
  include CanCan::ControllerAdditions
  include ActionController::MimeResponds  
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
    end
  end


end
