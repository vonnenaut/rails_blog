class ApplicationController < ActionController::Base
<<<<<<< HEAD
=======
  # devise -- this will enforce across the app here, or it can be moved to specific controllers to require authentication only for certain actions
  before_action :authenticate_user!
>>>>>>> 8e02132f68a9b3b50dd8e85a4c2f34d50c1fa11c
end
