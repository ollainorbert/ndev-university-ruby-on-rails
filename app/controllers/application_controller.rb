class ApplicationController < ActionController::Base
  before_action :set_locale
 
  def set_locale
    if params[:locale] != nil
	  session[$session_locale_id] = params[:locale]
	  $logger.info('new session locale: ' + params[:locale])
	end
	
	I18n.locale = params[:locale] || session[$session_locale_id] || I18n.default_locale
  end
end
