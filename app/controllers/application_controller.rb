class ApplicationController < ActionController::Base
  # devise -- this will enforce across the app here, or it can be moved to specific controllers to require authentication only for certain actions
  before_action :authenticate_user!
end
