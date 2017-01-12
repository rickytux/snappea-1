class ApplicationController < ActionController::Base
  include ActionController::HttpAuthentication::Token::ControllerMethods

  #before_filter :restrict_access

  private
  def restrict_access
    authenticate_or_request_with_http_token do |api, options|
      ApiKey.exists?(guid: api)
    end
  end
end
