class PractitionerMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def forgot_password(practitioner)
    @practitioner = practitioner
    @greeting = "Reset Password"

    mail to: practitioner.email, :subject => 'Reset password instructions'
  end
end
