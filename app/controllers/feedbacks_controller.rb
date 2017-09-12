class FeedbacksController < ApplicationController
  def index
    @feedbacks_grid = FeedbacksGrid.new(params[:feedbacks_grid])
  end
end
