class VisitorsController < ApplicationController
	
	def new
		@owner = Owner.new
		# render 'visitors/new'
		# render 'visitors/new', :layout => false
		# render 'visitors/new', :layout => 'special'
		# flash.now[:notice] = 'Welcome!'
		# flash.now[:alert] = 'My birthday is soon.'
	end

end