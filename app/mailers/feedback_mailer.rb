class FeedbackMailer < ApplicationMailer

  def feedback(feedback)
    @feedback = feedback
    receiver_emails = ENV['RECEIVER_EMAILS'].split(',')
    mail to: receiver_emails, subject: "Feedback From #{feedback.submitter}"
  end
end
