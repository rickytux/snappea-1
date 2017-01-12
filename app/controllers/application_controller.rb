class ApplicationController < ActionController::API
include ActionController::HttpAuthentication::Token::ControllerMethods

#before_filter :restrict_access

  private
  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      api_key = ApiKey.where(guid: token).first
      head :unauthorized unless api_key
    end
  end
end
