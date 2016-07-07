class UserMailer < ApplicationMailer
	default from: "do-not-reply@example.com"
	def contact_email(contact)
		@contact = contact
		mail(to: 'lxing.nyc@gmail.com', from: @contact.email, :subject => "Website Contact")
	end
end