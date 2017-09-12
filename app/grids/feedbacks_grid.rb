class FeedbacksGrid

  include Datagrid

  scope do
    Feedback
  end


  column(:submitter)
  column(:rating)
  column(:category)
  column(:comments)
  column(:created_at)
end
