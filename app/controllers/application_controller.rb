class ApplicationController < ActionController::API
  before_filter :restrict_access
  respond_to :json

  # Actions omitted

  private
  def restrict_access
    api_key = ApiKey.find_by_access_token(params[:guid])
    head :unauthorized unless api_key
  end
end
