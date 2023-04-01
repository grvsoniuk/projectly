class ApplicationController < ActionController::Base
  def authenticated_user
    User.first
  end
end