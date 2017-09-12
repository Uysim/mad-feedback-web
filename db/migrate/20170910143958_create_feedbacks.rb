class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.string :submitter
      t.integer :rating
      t.string :category
      t.text :comments

      t.timestamps
    end
  end
end
