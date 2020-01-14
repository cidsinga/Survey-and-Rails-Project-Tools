class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.column(:q1, :string)
      t.column(:q2, :string)
      t.column(:q3, :string)
      t.column(:q4, :string)
      t.column(:q5, :string)
      t.column(:survey_id, :integer)

      t.timestamps()
    end
  end
end
