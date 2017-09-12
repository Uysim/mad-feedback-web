class FeedbacksGrid

  include Datagrid

  scope do
    Feedback
  end

  filter(:submitter, :enum, :select => Feedback::SUBMITTERS)
  filter(:category, :enum, :select => Feedback::CATEGORIES)
  filter(:comments, :string) { |value| where("comments ilike '%#{value}%'") }
  filter(:rating, :integer, :range => true, :default => [1, 5])
  filter(:created_at, :date, :range => true, :header => 'Submitted At')

  column(:id)
  column(:submitter)
  column(:rating)
  column(:category)
  column(:comments)
  column(:created_at, header: 'Submitted At')
end
