class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.boolean :check
      t.text :text

      t.timestamps
    end
  end
end
