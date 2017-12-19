class CreateCanvasQuestionAs < ActiveRecord::Migration[5.1]
  def change
    create_table :canvas_question_as do |t|

      t.timestamps
    end
  end
end
