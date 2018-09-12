class AdminControlPanelController < ApplicationController
	def index
		$logger.info('An admin opened the Admin Control Panel!')
	end
end
