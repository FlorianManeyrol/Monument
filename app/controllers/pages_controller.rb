class PagesController < ApplicationController
	skip_before_action :authenticate_user!
	skip_before_action :authenticate_asso!
	def home
	end
end
