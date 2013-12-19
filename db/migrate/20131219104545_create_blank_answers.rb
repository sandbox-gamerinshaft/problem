class CreateBlankAnswers < ActiveRecord::Migration
  def change
    create_table :blank_answers do |t|
      t.string :answer
      t.string :blank_question_id

      t.timestamps
    end
  end
end
