class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :disable_sign_up_if_existing_user
  
  private
  
    def disable_sign_up_if_existing_user
      if params[:controller] == 'devise/registrations' && params[:action] =~ /^(new|create)$/
        not_found
      end 
    end
    
    def not_found
      raise ActionController::RoutingError.new('Not Found')
    end
end
