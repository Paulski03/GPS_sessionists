# Rails Contact Form w/ Gmail SMTP

ActionMailer::Base.smtp_settings = {
	:address => "smtp.gmail.com",
	:port => 587,
	:domain => "example.com",
	:user_name => "test@example.com",
	:password => "secret",
	:authentication => "plain",
	:enable_starttls_auto => true
}