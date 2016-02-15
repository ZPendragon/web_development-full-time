class PhoneNumbersController < ApplicationController

	#@successful_create = true

	def new
		@phone_number = PhoneNumber.new
		#if @successful_create == true
			#flash[:notification] = "Success!! Message sent!!" 
		#end
	end

	def create
		@successful_create = true
		@phone_number = PhoneNumber.find_or_create_by(phone_number: params[:phone_number][:phone_number])
		@phone_number.send_message
		@phone_number.sent_message
		#flash[:notification] = "Success!! Message sent!!" 
		#redirect_to :back
	end

end
