class PhoneNumber < ActiveRecord::Base
	#validates :mobile, :phone_number => true

	def twilio_client
			Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
		end

	def send_message
			twilio_client.messages.create(
				to: phone_number,
				from: ENV['TWILIO_PHONE_NUMBER'],
				body: "Hi StartUp Institute! Your phone number is #{phone_number}"
			)
	end

	def sent_message
		
		#update(verified: true)
		
	end
	#def verify(entered_phone_number)
	#	update(verified: true) if phone_number
	#end
end

	