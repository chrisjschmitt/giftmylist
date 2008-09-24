#---
# Excerpted from "Rails Recipes"
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_rr for more book information.
#---
# Filters added to this controller will be run for all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
class ApplicationController < ActionController::Base
  session :session_key => '_secret_santa_session_id'
  
  before_filter :authorize
  
  private

  def authorize
    unless User.find_by_id(session[:user_id])
      session[:original_uri] = request.request_uri
      flash[:notice] = "Please log in"
      redirect_to(:controller => "login", :action => "login")
    end
  end
  
end