class CreateBlankAnswers < ActiveRecord::Migration
  def change
    create_table :blank_answers do |t|
      t.string :answer

      t.timestamps
    end
  end
end
