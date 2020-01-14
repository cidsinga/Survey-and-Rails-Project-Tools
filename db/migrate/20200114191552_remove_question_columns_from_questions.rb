class RemoveQuestionColumnsFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column(:questions, :q2)
    remove_column(:questions, :q3)
    remove_column(:questions, :q4)
    remove_column(:questions, :q5)
  end
end
