class VisitorsController < ApplicationController
	
	def new
		@visitor = Visitor.new
		# @owner = Owner.new
		# render 'visitors/new'
		# render 'visitors/new', :layout => false
		# render 'visitors/new', :layout => 'special'
		# flash.now[:notice] = 'Welcome!'
		# flash.now[:alert] = 'My birthday is soon.'
	end

	def create
		@visitor = Visitor.new(secure_params)
		if @visitor.valid?
			@visitor.subscribe
			flash[:notice] = "Signed up #{@visitor.email}."
			redirect_to root_path
		else
			render :new
		end
	end

	private

	def secure_params
		params.require(:visitor).permit(:email)
	end

end