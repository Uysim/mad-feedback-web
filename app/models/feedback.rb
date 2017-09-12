class Feedback < ApplicationRecord
  SUBMITTERS = ['Client', 'Employee']

  CATEGORIES = [
    'Quality',
    'Speed',
    'Value',
    'Creativity',
    'Strategy'
  ]

  validates :submitter, presence: true
  validates :rating,    presence: true
  validates :category,  presence: true

  after_create :send_notify_email

  def self.average_rating
    return 0 if count < 1
    sum(:rating) / count
  end

  private


  def send_notify_email
    FeedbackMailer.feedback(self).deliver_now
  end
end
