class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      user = ENV["BASIC_AUTH_USER"] || 'NTKANAZAWA-USER'
      pass = ENV["BASIC_AUTH_PASSWORD"] || '16b4030a-bff7-465b-bacd-b42a9a75e403'
      username == user && password == pass
    end
    end
end
